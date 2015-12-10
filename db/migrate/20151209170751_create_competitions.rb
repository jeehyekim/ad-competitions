class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :title
      t.text :description
      t.string :website
      t.date :early_bird
      t.date :deadline
      t.date :notifiction
      t.string :image_url

      t.timestamps null: false
    end
  end
end
