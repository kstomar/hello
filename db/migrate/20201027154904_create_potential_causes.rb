class CreatePotentialCauses < ActiveRecord::Migration[6.0]
  def change
    create_table :potential_causes do |t|
      t.belongs_to :advice
      t.text :point
      t.timestamps
    end
  end
end
