class CreatePhilos < ActiveRecord::Migration[6.1]
  def change
    create_table :philos do |t|
      t.string :name
      t.string :quote

      t.timestamps
    end
  end
end
