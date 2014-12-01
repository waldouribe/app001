class Subcategory < ActiveRecord::Base
  belongs_to :category
  has_many :experiences, dependent: :destroy

  def to_s
    name
  end
end
