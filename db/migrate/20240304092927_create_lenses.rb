class CreateLenses < ActiveRecord::Migration[7.1]
  def change
    create_table :lenses do |t|
      t.integer :user_id
      t.string :lens_type, null: false
      t.date :opening_date, null: false
      t.date :next_replacement_date

      t.timestamps
    end
  end
end
