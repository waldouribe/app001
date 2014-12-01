class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :experiences

  def to_s
    name
  end
end
