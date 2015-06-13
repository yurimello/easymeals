Predictor.redis = Redis.new(:url => ENV["PREDICTOR_REDIS"])

class ReceipeRecommender
  include Predictor::Base

  # input_matrix :users, weight: 3.0
  # input_matrix :receipes, weight: 1.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
  # input_matrix :item, weight: 2.0
  # input_matrix :cuisine, weight: 2.0

  # input_matrix :users, weight: 3.0
  input_matrix :ingredients, weight: 3.0, measure: :sorensen_coefficient # Use Sorenson over Jaccard
  input_matrix :cuisines, weight: 1.0, measure: :sorensen_coefficient
  input_matrix :occasions, weight: 1.0, measure: :sorensen_coefficient

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