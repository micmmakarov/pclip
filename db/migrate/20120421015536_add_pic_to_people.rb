class AddPicToPeople < ActiveRecord::Migration
   def self.up
    change_table :people do |t|
      t.has_attached_file :pic
    end
  end

  def self.down
    drop_attached_file :people, :pic
  end
end