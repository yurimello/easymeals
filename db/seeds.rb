categories = [
  {id: 1, name: "Carne" }
]

receipes = [
  {id: 1, name: "Carne Assada", category_id: 1, obs: "Importante: a carne não é temperada antes, somente dourada.", time_to_do: 90, url: "http://m.cybercook.com.br/carne-assada-r-3-797.html"},
  {id: 2, name: "Rosbife ao Molho Madeira", category_id: 1, time_to_do: 120, url: "http://www.cybercook.com.br/rosbife-r-3-11122.html"},
]

ingredients = [
  {id: 1, name: "Lagarto"}, {id: 2, name: "Molho de tomate"}, {id: 3, name: "Cerveja escura"}, {id: 4, name: "Caldo Knor"},
  {id: 5, name: "Filé Mingon"}, {id: 6, name: "Sal"}, {id: 7, name: "Pimenta do reino branca"}, {id: 8, name: "Cebola"},
  {id: 9, name: "Molho Shoyu"}, {id: 10, name: "Vinho Tinto"}, {id: 11, name: "Farinha de trigo"}, 
  {id: 12, name: "Champignon em conserva"}, {id: 13, name: "Margarina"},
]

steps = [
  {id: 1, how_to: "Frite o lagarto até dourar na panela de pressão,acrescente o molho de tomate,a cerveja escura e os tabletes de caldo de carne,tampe e cozinhe até ficar macia, aproximadamente 50 minutos", receipe_id: 1},
  {id: 2, how_to: "Se desejar depois engrosse o molho que ficou na panela com 2 colheres de amido de milho", receipe_id: 1},
  {id: 3, receipe_id: 2, how_to: "Tempere a carne com o sal, a pimenta e a cebola"},
  {id: 4, receipe_id: 2, how_to: "Deixe tomar gosto por 1 hora"},
  {id: 5, receipe_id: 2, how_to: "Espalhe a margarina sobre a carne, pincele com o shoyu e coloque-a em um refratário"},
  {id: 6, receipe_id: 2, how_to: "Tampe e leve ao microondas por 35 a 40 minutos na potência média"},
  {id: 7, receipe_id: 2, how_to: "Inverta a carne na metade do cozimento"},
  {id: 8, receipe_id: 2, how_to: "Retire a carne, envolva com papel alumínio e reserve"},
  {id: 9, receipe_id: 2, how_to: "No mesmo recipiente em que foi feita, coloque o vinho com a farinha diluída em 1/4 xícara (chá) de água e os champignons"},
  {id: 10, receipe_id: 2, how_to: "Leve ao microondas por 2 a 3 minutos na potência alta"},
  {id: 11, receipe_id: 2, how_to: "Retorne a carne no recipiente e volte ao microondas por 3 a 4 minutos na potência alta"},
]

ingredient_receipes = [
  {id: 1, ingredient_id: 1, receipe_id: 1, quantity: 2, metering: "kg"}, 
  {id: 2, ingredient_id: 2, receipe_id: 1, quantity: 1, metering: "lata"},
  {id: 3, ingredient_id: 3, receipe_id: 1, quantity: 1, metering: "garrafa"},
  {id: 4, ingredient_id: 4, receipe_id: 1, quantity: 2, metering: "tablete"},
  {id: 5, ingredient_id: 5, receipe_id: 2, quantity: 1, metering: "kg"},
  {id: 6, ingredient_id: 6, receipe_id: 2, quantity: 0, metering: "quanto baste"},
  {id: 7, ingredient_id: 7, receipe_id: 2, quantity: 0, metering: "quanto baste"},
  {id: 8, ingredient_id: 8, receipe_id: 2, quantity: 1, metering: "unidade", how: "ralada"},
  {id: 9, ingredient_id: 9, receipe_id: 2, quantity: 2, metering: "colher de sopa"},
  {id: 10, ingredient_id: 10, receipe_id: 2, quantity: 120, metering: "ml"},
  {id: 11, ingredient_id: 11, receipe_id: 2, quantity: 1, metering: "colher de sobremesa"},
  {id: 12, ingredient_id: 12, receipe_id: 2, quantity: 1, metering: "xícara de chá"},
  {id: 13, ingredient_id: 13, receipe_id: 2, quantity: 1, metering: "colher de sopa"}
]




Category.seed(categories)
Receipe.seed(receipes)
Ingredient.seed(ingredients)
Step.seed(steps)
IngredientReceipe.seed(ingredient_receipes)