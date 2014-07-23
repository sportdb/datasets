
module SportDb

module FootballStats

class CreateDb

def up

# The following stat tables are specific to football (soccer)
#  Sport-specific stats could be abstracted into their own
#  extensions.
create_table :team_stats do |t|
  t.references  :team
  t.references  :game
  t.references  :event
  t.integer     :redCards
  t.integer     :yellowCards
  t.integer     :totalGoals
  t.integer     :goalsConceded
  t.integer     :wins
  t.integer     :losses
  t.integer     :draws
  t.timestamps
end

create_table :player_stats do |t|
  t.integer     :person_id
  t.references  :team
  t.references  :game
  t.references  :event
  t.integer     :redCards
  t.integer     :yellowCards
  t.integer     :totalGoals
  t.integer     :goalsConceded
  t.integer     :wins
  t.integer     :losses
  t.integer     :draws
  t.integer     :foulsSuffered
  t.integer     :foulsCommitted
  t.integer     :goalAssists
  t.integer     :shotsOnTarget
  t.integer     :totalShots
  t.integer     :totalGoals
  t.integer     :subIns
  t.integer     :subOuts
  t.integer     :starts
  t.integer     :saves
  t.integer     :minutesPlayed
  t.string      :position
  t.timestamps
end

end # method up


end # class CreateDb
end # module FootballStats

end # module SportDb
