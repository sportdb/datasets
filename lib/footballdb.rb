# encoding: utf-8


###
# note: footballdb is an addon/plugin for sportdb
##   assume sportdb required


# our own code

require 'footballdb/version'    # let version always go first

require 'footballdb/models/stats/player_stat'

require 'footballdb/models/person'


## add backwards compatible n convenience namespace
###  move to forward.rb ?? - why? why not??
module FootballDb
  Models = Model
end


require 'footballdb/schema'       # NB: requires sportdb/models (include SportDB::Models)


module FootballDb

  def self.banner
    "footballdb/#{VERSION} on Ruby #{RUBY_VERSION} (#{RUBY_RELEASE_DATE}) [#{RUBY_PLATFORM}]"
  end

  def self.root
    "#{File.expand_path( File.dirname(File.dirname(__FILE__)) )}"
  end

  def self.test_data_path
    "#{root}/test/data"
  end

  def self.create
    CreateDb.new.up
    ## ConfDb::Model::Prop.create!( key: 'db.schema.football.version', value: VERSION )
  end

end  # module FootballDb


## say hello
puts FootballDb.banner

