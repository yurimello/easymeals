class Admin::ReceipesController < ApplicationController

  def index 
    @receipes = Receipe.all
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
        steps_attributes: [:id, :_destroy, :description, :scope],
        ingredient_instructions_attributes: [:id, :_destroy, :name, :how, :quantity, :metering, :scope]
    )
  end
end