class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :full_name
      t.string :email
      t.string :mobile
      t.references :donation, foreign_key: true
    end
  end
end
