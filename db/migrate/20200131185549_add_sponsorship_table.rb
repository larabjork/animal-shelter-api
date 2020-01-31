class AddSponsorshipTable < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsorships do |t|
      t.belongs_to :animal
      t.belongs_to :sponsor
      t.timestamps
    end
  end
end
