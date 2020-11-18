class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.integer :author, null: false
      t.integer :customerID, null: false
      t.integer :buildingID, null: false
      t.integer :batteryID
      t.integer :columnID
      t.integer :elevatorID
      t.integer :employeeID
      t.datetime :"startIntervention", null: true
      t.datetime :"endIntervention", null: true
      t.string :result, default: "Incomplete", null: false
      t.text :report
      t.string :status, default: "Pending", null: false
      t.timestamps
    end
  end
end
