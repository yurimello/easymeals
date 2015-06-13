# == Schema Information
#
# Table name: receipes
#
#  id            :integer          not null, primary key
#  name          :string
#  level         :integer
#  time_to_do    :integer
#  obs           :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  category_id   :integer
#  url           :string
#  author        :string
#  category_name :string
#  cover         :string
#

COLUMNS = [
  :id,
  :name,
  :category_name,
  :steps_count,
  :ingredients_count
]

class Receipe < ActiveRecord::Base
  has_many :ingredient_instructions, dependent: :destroy
  has_many :ingredients, through: :ingredient_instructions

  has_many :steps, dependent: :destroy
  belongs_to :category

  accepts_nested_attributes_for :steps, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :ingredient_instructions, :reject_if => :all_blank, :allow_destroy => true

  before_save :set_counters
  before_save :set_recommendation

  mount_uploader :cover, ReceipeCoverUploader

  MENU_GROUPS = [
    I18n.t("receipe.menu_group.breakfest"),
    I18n.t("receipe.menu_group.lunch_dinner")
  ]

  acts_as_taggable_on :cuisines, :occasions, :allergies, :diets

  def self.similarities_for(id)
    recommender = ReceipeRecommender.new
    similarities = []
    recommender.similarities_for(id).each do |receipe_id|
      similarities << Receipe.find(receipe_id)
    end
    similarities
  end

  def set_counters
    self.steps_count = self.steps.count
    self.ingredients_count = self.ingredient_instructions.count
  end

  def columns
    COLUMNS
  end

  def set_recommendation
    recommender = ReceipeRecommender.new
    self.ingredients.each do |ingredient|
      recommender.add_to_matrix(:ingredients, ingredient.name, self.id.to_s)
    end

    self.cuisine_list.each do |cuisine|
      recommender.add_to_matrix(:cuisines, cuisine, self.id.to_s)
    end

    self.occasion_list.each do |occasion|
      recommender.add_to_matrix(:occasions, occasion, self.id.to_s)
    end

    recommender.process_items!(self.id.to_s)

    # recommender.add_to_matrix!(:ingredients, "frango", "frango xadres", "frango agridoce", "strogonoff", "frango a milanesa", "frango ao creme de leite")
    # recommender.add_to_matrix!(:ingredients, "creme de leite", "frango ao creme de leite", "strogonoff", "macarrao de frango ao molho branco")
    # recommender.add_to_matrix!(:users, "yuri", "strogonoff")
    # recommender.similarities_for("strogonoff")
  end
end
