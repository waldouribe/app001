class Experience < ActiveRecord::Base
  belongs_to :subcategory

  def to_s
    title
  end
end
