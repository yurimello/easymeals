class Admin::ReceipesController < ApplicationController
  respond_to :html, :json

  def index 
    @receipes = Receipe.order(order).page(current_page).per(per_page)
    respond_to do |format|
      format.html
      format.json { render json: to_json } 
    end
  end


  def to_json
    total_count = @receipes.total_count
    {
      # draw: 1, 
      recordsTotal: total_count, recordsFiltered: total_count, 
      data: attributes
    }
  end

  def columns
    Receipe::COLUMNS
  end

  def attributes
    @receipes.map do |object|
      attrs = object.columns.map {|p| object.send(p)} 
      Hash[object.columns.zip(attrs)]
    end
  end
  
  def new
    @receipe = Receipe.new
  end
  
  def create
    @receipe = Receipe.new(receipe_params)
    if @receipe.save
      flash[:success] = I18n.t("admin.receipes.messages.create_success")
      redirect_to admin_receipes_path
    else
      flash[:error] = I18n.t("admin.receipes.messages.error")
      render action: :new
    end
  end

  def edit
    @receipe = Receipe.find(params[:id])
  end

  def update
    @receipe = Receipe.find(params[:id])
    if @receipe.update_attributes(receipe_params)
      flash[:success] = I18n.t("admin.receipes.messages.update_success")
      redirect_to admin_receipes_path
    else
      flash[:error] = I18n.t("admin.receipes.messages.error")
      render action: :edit
    end 
  end

  def show
    @receipe = Receipe.find(params[:id])
  end

  private
  def receipe_params
    params.require(:receipe).permit(
        :name, :author, :category_name, :url, :cover, :menu_group, :time_to_do, :yield,
        :cuisine_list, :occasion_list, :allergy_list, :diet_list,
        steps_attributes: [:id, :_destroy, :description, :scope, :position],
        ingredient_instructions_attributes: [:id, :_destroy, :name, :how, :quantity, :metering, :scope]
    )
  end

  def current_page
    if params["start"]
      (params["start"].to_i - params["length"].to_i) + 2
    else
      params["page"] || 1
    end
  end

  def per_page
    params["length"] || 10
  end

  def order
    if params["order"]
      ordering = params["order"]["0"]
      col = ordering["column"].to_i
      {columns[col] => ordering["dir"]}
    else
      {"created_at" => "desc"}
    end
  end
end