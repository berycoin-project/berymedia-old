class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.date :date_of_birth
      t.string :gender
      t.string :about_me
      t.string :company

      t.timestamps
    end
  end
end
