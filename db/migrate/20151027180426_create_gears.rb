class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      
      t.string :name
      t.string :description
      t.string :owner
      
      
      t.timestamps
    end
  end
end
