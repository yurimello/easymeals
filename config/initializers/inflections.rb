# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections(:pt) do |inflect|
  inflect.singular /^(.*)s$/i, '\1'
  inflect.plural /^(.*)$/i, '\1s'
  inflect.irregular 'colher de chá', 'colheres de chá'
  inflect.irregular 'xícara de chá', 'xícaras de chá'
  inflect.irregular 'colher de sopa', 'colheres de sopa'
  inflect.irregular 'g', 'g'
  inflect.irregular 'kg', 'kg'
  inflect.irregular 'ml', 'ml'
  inflect.irregular 'l', 'l'
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end

#IngredientInstruction.all.map {|a| a.metering.singularize(:pt).downcase}