
## minitest setup

# require 'minitest/unit'
require 'minitest/autorun'

require 'sportdb'


## our own code
require 'footballdb'


#####################
# Models shortcuts

Country    = WorldDb::Model::Country

Person      = PersonDb::Model::Person

League      = SportDb::Model::League
Season      = SportDb::Model::Season
Event       = SportDb::Model::Event
Team        = SportDb::Model::Team
Roster      = SportDb::Model::Roster

PlayerStat  = FootballDb::Model::PlayerStat



####################
# Reader shortcuts

Reader             = SportDb::Reader
TeamReader         = SportDb::TeamReader
AssocReader        = SportDb::AssocReader
SeasonReader       = SportDb::SeasonReader
LeagueReader       = SportDb::LeagueReader
EventReader        = SportDb::EventReader
GameReader         = SportDb::GameReader
SquadReader        = SportDb::SquadReader
RaceTeamReader     = SportDb::RaceTeamReader

PersonReader       = PersonDb::PersonReader

#################################
# setup db -> schema / tables

SportDb.setup_in_memory_db

## add football db tables
FootballDb.create    # see footballdb/schema

