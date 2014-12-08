class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :year_born
      t.string :discipline

      t.timestamps
    end
  end
end
