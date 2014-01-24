class AddALcoholToStep < ActiveRecord::Migration
  def change
    add_column :steps, :alcohol_id, :integer
  end
end
