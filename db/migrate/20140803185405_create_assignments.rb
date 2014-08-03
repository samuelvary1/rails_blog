class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :assignment

      t.timestamps
    end
  end
end
