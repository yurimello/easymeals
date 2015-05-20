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

require 'rails_helper'

RSpec.describe Receipe, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
