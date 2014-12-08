class Participant < ActiveRecord::Base
  attr_accessible :discipline, :year_born, :materials_type, :when_best, :howmany, :updating, :ways, :frequency
end
