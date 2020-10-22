# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord
  scope :search_by_name, ->(query) { where('name ilike ?', "%#{query}%") }
end
