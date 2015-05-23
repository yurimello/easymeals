# == Schema Information
#
# Table name: steps
#
#  id         :integer          not null, primary key
#  position   :integer
#  receipe_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class Step < ActiveRecord::Base
  belongs_to :receipe
end
