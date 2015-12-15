class AddKindToDeadlines < ActiveRecord::Migration
  def change
    add_column :deadlines, :kind, :string
    add_column :deadlines, :date, :datetime
  end
end
