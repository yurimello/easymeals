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

require 'rails_helper'

RSpec.describe Receipe, type: :model do
  before(:each) do
    subject {create(:pasta)}
  end

end
