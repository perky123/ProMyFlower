# == Schema Information
#
# Table name: tabusers
#
#  id         :integer          not null, primary key
#  name       :string
#  password   :string
#  true_name  :string
#  address    :string
#  code       :string
#  phone      :string
#  email      :string
#  address_type :string
#  created_at :datetime
#  updated_at :datetime
#
class Tabuser < ActiveRecord::Base
	validates :name, :password, :phone, presence: true
	validates :phone, numericality: { only_integer: true }, length: { minimum: 11, maximum: 11, too_short: '请确认11位手机号', too_long: '请确认11位手机号'  }
end
