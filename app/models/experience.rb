class Experience < ActiveRecord::Base
  belongs_to :subcategory
  has_many :evaluations, dependent: :destroy

  def to_s
    title
  end
end
