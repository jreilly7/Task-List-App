class AddPrivateToTaskLists < ActiveRecord::Migration
  def change
    add_column :task_lists, :is_private, :boolean, default: false

  end
end
