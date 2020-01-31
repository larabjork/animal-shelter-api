class RemoveColumnsTypeAndVideo < ActiveRecord::Migration[5.2]
  def change
    remove_column(:animals, :animal_type)
    remove_column(:animals, :video)
  end
end
