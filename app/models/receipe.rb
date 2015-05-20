# == Schema Information
#
# Table name: receipes
#
#  id          :integer          not null, primary key
#  name        :string
#  level       :integer
#  time_to_do  :integer
#  obs         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Receipe < ActiveRecord::Base
  has_many :ingredient_receipes, dependent: :destroy
  has_many :ingredients, through: :ingredient_receipes

  has_many :steps, dependent: :destroy
  belongs_to :category
end
