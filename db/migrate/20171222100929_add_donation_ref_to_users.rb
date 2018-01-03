class AddDonationRefToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :donation, foreign_key: true
  end
end
