class CreateCoffees < ActiveRecord::Migration[6.1]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :notes
      t.belongs_to :philo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
