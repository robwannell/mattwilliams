class CreateEndorsements < ActiveRecord::Migration
  def change
    create_table :endorsements do |t|
      t.string :firstname
      t.string :lastname
      t.string :category
      t.integer :ranking
      t.string :title
      t.string :organization

      t.timestamps null: false
    end
  end
end
