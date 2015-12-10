class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|

      t.timestamps null: false

      t.belongs_to :user
      t.belongs_to :competition
    end
  end
end
