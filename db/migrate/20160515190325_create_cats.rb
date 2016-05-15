class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :before_street
      t.string :before_city
      t.string :before_state
      t.string :before_zip
      t.integer :before_type
      t.string :after_street
      t.string :after_city
      t.string :after_state
      t.integer :after_zip
      t.integer :after_type
      t.integer :location_prompting_visit
      t.integer :amount_spent_today

      t.timestamps null: false
    end
  end
end
