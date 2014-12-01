class Category < ActiveRecord::Base
  has_many :subcategories, dependent: :destroy

  def to_s
    name
  end
end
