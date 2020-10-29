class CreateAdvices < ActiveRecord::Migration[6.0]
  def change
    create_table :advices do |t|
      t.string :measured
      t.string :control
      t.string :your_home
      t.string :acceptable_range
      t.text :description
      t.timestamps
    end
  end
end
