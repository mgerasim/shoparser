class CreateAlternatives < ActiveRecord::Migration[5.2]
  def change
    create_table :alternatives do |t|
      t.references :tovar, foreign_key: true
      t.string :xpath
      t.float :value

      t.timestamps
    end
  end
end
