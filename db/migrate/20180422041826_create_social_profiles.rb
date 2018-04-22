class CreateSocialProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :social_profiles do |t|
      t.references :profile, foreign_key: true
      t.references :social, foreign_key: true

      t.timestamps
    end
  end
end
