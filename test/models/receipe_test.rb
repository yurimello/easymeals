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

require 'test_helper'

class ReceipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
