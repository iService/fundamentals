class AddConfirmableToDevise < ActiveRecord::Migration
  def self.up
    add_column :people, :confirmation_token, :string
    add_column :people, :confirmed_at,       :datetime
    add_column :people, :confirmation_sent_at , :datetime
    add_column :people, :unconfirmed_email, :string

    add_index  :people, :confirmation_token, :unique => true
  end
  def self.down
    remove_index  :people, :confirmation_token

    remove_column :people, :confirmation_sent_at
    remove_column :people, :confirmed_at
    remove_column :people, :confirmation_token
  end
end