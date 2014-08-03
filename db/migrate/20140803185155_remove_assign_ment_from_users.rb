class RemoveAssignMentFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :assignment, :string
  end
end
