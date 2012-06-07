class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :family
      t.string :pin
      t.string :id_card_number
      t.datetime :id_card_issue_date

      t.timestamps
    end
  end
end
