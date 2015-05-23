# == Schema Information
#
# Table name: steps
#
#  id          :integer          not null, primary key
#  position    :integer
#  receipe_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#

require 'rails_helper'

RSpec.describe Step, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
