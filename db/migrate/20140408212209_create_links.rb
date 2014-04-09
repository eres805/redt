class CreateLinks < ActiveRecord::Migration
  def change
  	create_table :links do |t|
      t.string :url
      t.string :description
      t.string :title
      t.integer :net_rating
      t.timestamps
      t.belongs_to :user
    end
  end
end
