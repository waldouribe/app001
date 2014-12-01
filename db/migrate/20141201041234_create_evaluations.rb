class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :experience, index: true
      t.references :user, index: true
      t.integer :grade

      t.timestamps
    end
  end
end
