class AddUrlToAlternative < ActiveRecord::Migration[5.2]
  def change
    add_column :alternatives, :url, :string
  end
end
