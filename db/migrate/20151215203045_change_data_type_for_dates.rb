class ChangeDataTypeForDates < ActiveRecord::Migration
  def self.up
    change_table :competitions do |t|
      t.change :early_bird, :datetime
      t.change :deadline, :datetime
      t.change :notifiction, :datetime
    end
  end
  def self.down
    change_table :competitions do |t|
      t.change :early_bird, :datetime
      t.change :deadline, :datetime
      t.change :notifiction, :datetime
    end
  end
end
