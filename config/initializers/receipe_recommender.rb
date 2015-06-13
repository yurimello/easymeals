if Rails.env == "production"
  url = ENV["REDISTOGO_URL"]
else
  url = ENV["PREDICTOR_REDIS"]
end
# uri = URI.parse(ENV["REDISTOGO_URL"])
# REDIS = Redis.new(:url => uri)
Predictor.redis = Redis.new(:url => url)

class ReceipeRecommender
  include Predictor::Base

  # input_matrix :users, weight: 3.0
  # input_matrix :receipes, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
  # input_matrix :item, weight: 2.0
  # input_matrix :cuisine, weight: 2.0

  # input_matrix :users, weight: 3.0
  input_matrix :main_ingredients, weight: 3.0
  input_matrix :secundary_ingredients, weight: 2.0
  input_matrix :comun_ingredients, weight: 1.0
  
  input_matrix :categories, weight: 3.0
  input_matrix :cuisines, weight: 1.0
  input_matrix :occasions, weight: 1.0

  # o usuario yuri usou a receita strognoff
  # recommender.predictions_for("yuri", matrix_label: :users)
  # # o mais proximo que mostra é o frango ao creme de leite - pq como o estrogonoff, leva frango e creme de leite
  # doesnt_like = recommender.ingredients.items_for("creme de leite")
  # # usuario yuri passou a odiar creme de leite
  # recommender.predictions_for("yuri", matrix_label: :users, exclusion_set: doesnt_like)
  # agora ja nao exibe mais o frango ao creme de leite, pq o usuario detesta! ;)


  
  # gem 'lita'
  # gem 'lita-karma'
  # gem 'lita-answers'

  #redis.hgetall(REDIS_KEY).map {|k, v| v if 'oi'.match(k)}.compact.first
end