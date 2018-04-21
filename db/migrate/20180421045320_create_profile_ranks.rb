class CreateProfileRanks < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_ranks do |t|
      t.references :profile, foreign_key: true
      t.references :rank, foreign_key: true

      t.timestamps
    end
  end
end
