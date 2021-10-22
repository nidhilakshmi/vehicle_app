class CreateTransportSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :transport_systems do |t|
      t.string :name
      t.integer :model

      t.timestamps
    end
  end
end
