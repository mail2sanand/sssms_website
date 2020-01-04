class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.json :number_of_patients_served
      t.json :distribution_of_patients
      t.json :diagnostic_procedures_performed

      t.string :stats_from
      t.string :stats_to
      t.string :no_of_villages
      t.string :no_of_mandals

      t.timestamps
    end
  end
end
