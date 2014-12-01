class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :description
      t.text :javascript
      t.references :subcategory, index: true

      t.timestamps
    end
  end
end
