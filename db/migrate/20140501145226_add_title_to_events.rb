class AddTitleToEvents < ActiveRecord::Migration
  def change
    add_column :events, :date, :date
    add_column :events, :title, :string
  end
end
