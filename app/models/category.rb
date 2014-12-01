class Category < ActiveRecord::Base
  has_many :subcategories

  def to_s
    name
  end
end
