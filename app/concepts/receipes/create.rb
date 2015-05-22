class Receipe < ActiveRecord::Base

  class Create < Trailblazer::Operation

    include CRUD
    include ActiveModel
    model Receipe, :create
    
    contract do
      include Reform::Form::ActiveModel
      # property :encrypted_password

      # validates :email, :name, :password, :password_confirmation, presence: true
    end

    def process(params)
      validate(params[:receipe]) do |f|
        f.save
      end
    end
  end
end