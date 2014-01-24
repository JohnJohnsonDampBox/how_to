class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.text :description

      t.timestamps
    end
  end
end
