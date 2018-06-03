class CreateTovars < ActiveRecord::Migration[5.2]
  def change
    create_table :tovars do |t|
      t.string :name

      t.timestamps
    end
  end
end
