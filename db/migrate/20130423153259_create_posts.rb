class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :email
      t.string :secret_key
      t.references :category
    end
  end
end
