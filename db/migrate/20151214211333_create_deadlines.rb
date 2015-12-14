class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|

      t.timestamps null: false

      t.belongs_to :competition
      t.belongs_to :user
    end
  end
end
