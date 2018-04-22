class CreateProfileContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :profile_contacts do |t|
      t.references :profile, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
