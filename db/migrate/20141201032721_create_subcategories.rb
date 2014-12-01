class CreateSubcategories < ActiveRecord::Migration
  def change
    create_table :subcategories do |t|
      t.references :category, index: true
      t.string :name

      t.timestamps
    end
  end
end
