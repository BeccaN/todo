class AddListIdColumnToTask < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :list_id, :integer
  end
end
