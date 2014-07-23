class AddImageToArticles < ActiveRecord::Migration
  def change
  	create_table :images do |t|
    t.string :article
    t.string :filename
  end
  end
end
