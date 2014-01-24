class CreateAlcohols < ActiveRecord::Migration
  def change
    create_table :alcohols do |t|
      t.string :name
      t.text :decsription
      t.text :ingredients

      t.timestamps
    end
  end
end
