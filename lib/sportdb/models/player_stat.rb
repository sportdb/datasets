
module SportDb
  module Model

# PlayerStat
#
# Contains the primary statistics for a player.  Could be on a per-game
#  basis, per event, per-team, or all-time (no game, no event, no team).  A player will
#  have many player_stats and can also have many generic StatData items
#
# redCards
# yellowCards
# totalGoals
# goalsConceded
# wins
# losses
# draws
# foulsSuffered
# foulsCommitted
# goalAssists
# shotsOnTarget
# totalShots
# totalGoals
# subIns
# subOuts
# starts
# saves
# minutesPlayed
# position
#
# See schema.rb for full definition

class PlayerStat < ActiveRecord::Base

  has_one :team
  has_one :game
  has_one :event
  belongs_to :person, :class_name => 'PersonDb::Model::Person', :foreign_key => 'person_id'

  end # class
  end # module Model
end # module SportDb
