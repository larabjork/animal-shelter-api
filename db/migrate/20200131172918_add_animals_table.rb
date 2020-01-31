class AddAnimalsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :name, :string
      t.column :date_available, :string
      t.column :animal_type, :string
      t.column :breed, :string
      t.column :sex, :string
      t.column :color, :string
      t.column :age, :string
      t.column :weight, :string
      t.column :location, :string
      t.column :kennel, :string
      t.column :profile, :string
      t.column :picture, :string
      t.column :video, :string
      t.timestamps
    end
  end
end
