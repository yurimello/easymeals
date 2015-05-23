class Admin::ReceipesController < ApplicationController

  def index 
    @receipes = Receipe.all
  end
  
  def new
    @receipe = Receipe.new
    2.times { @receipe.steps.build }
    2.times { @receipe.ingredient_instructions.build }
  end
  
  def create
    @receipe = Receipe.new(receipe_params)
    if @receipe.save
      redirect_to admin_receipes_path
    else
      render action: :new
    end
  end

  def show
    @receipe = Receipe.find(params[:id])
  end

  private
  def receipe_params
    params.require(:receipe).permit(
        :name,
        steps_attributes: [:id, :_destroy, :name],
        ingredient_instructions_attributes: [:id, :_destroy, :name, :how, :quantity, :metering]
    )
  end
end