class Admin::ReceipesController < ApplicationController
  def new
    @receipe = Receipe.new
  end
  def create
  end
end