# == Schema Information
#
# Table name: tabusers
#
#  id         :integer          not null, primary key
#  name       :string
#  origin_price   :integer
#  img        :string
#  detail     :string
#  material   :string
#  packaging   :string
#  current_price :integer
#  created_at :datetime
#  updated_at :datetime
#  default    :integer
#

class Tabflower < ActiveRecord::Base
end
