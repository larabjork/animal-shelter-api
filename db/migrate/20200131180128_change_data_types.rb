class ChangeDataTypes < ActiveRecord::Migration[5.2]
  def change
    remove_column(:animals, :age)
    remove_column(:animals, :weight)
    remove_column(:animals, :kennel)
  end
end
