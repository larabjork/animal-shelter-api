class AddColumnsAgeWeightKennel < ActiveRecord::Migration[5.2]
  def change
    add_column(:animals, :age, :integer)
    add_column(:animals, :weight, :integer)
    add_column(:animals, :kennel, :integer)
  end
end
