class AddDetailsToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :howmany, :integer
    add_column :participants, :ways, :text
    add_column :participants, :when_best, :integer
    add_column :participants, :frequency, :integer
    add_column :participants, :updating, :integer
  end
end
