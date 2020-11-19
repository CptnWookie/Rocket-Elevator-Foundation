class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.integer :author, null: false
      t.integer :customer_id, null: false
      t.integer :building_id, null: false
      t.integer :battery_id
      t.integer :column_id
      t.integer :elevator_id
      t.integer :employee_id
      t.datetime :startIntervention, null: true
      t.datetime :endIntervention, null: true
      t.string :result, null: false
      t.text :report
      t.string :status, null: false
      t.timestamps
    end
  end
end
