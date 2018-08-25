class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.date :day
      t.float :height
      t.float :weight
      t.float :bmi
      t.integer :highblood
      t.integer :lowblood
      t.text :diary
      t.string :picture
      t.float :targetbmi
      t.float :targetweight
      t.float :compareweight

      t.timestamps
    end
  end
end
