class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
