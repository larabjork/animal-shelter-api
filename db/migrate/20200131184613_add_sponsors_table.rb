class AddSponsorsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsors do |t|
      t.column :sponsor_name, :string
      t.timestamps
    end
  end
end
