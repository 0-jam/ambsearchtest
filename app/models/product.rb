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
  def self.search_by_name(query)
    where('name like ?', "%#{query}%")
  end
end
