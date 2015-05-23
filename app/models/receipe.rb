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
#  url         :string
#

class Receipe < ActiveRecord::Base
  has_many :ingredient_instructions, dependent: :destroy
  has_many :ingredients, through: :ingredient_instructions

  has_many :steps, dependent: :destroy
  belongs_to :category

  accepts_nested_attributes_for :steps, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :ingredient_instructions, :reject_if => :all_blank, :allow_destroy => true
end
