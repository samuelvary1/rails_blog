class CreateImageUploaders < ActiveRecord::Migration
  def change
    create_table :image_uploaders do |t|
      t.string :title
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
