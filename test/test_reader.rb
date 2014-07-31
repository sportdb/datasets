# encoding: utf-8

###
#  to run use
#     ruby -I ./lib -I ./test test/test_reader.rb
#  or better
#     rake -I ./lib test


require 'helper'

class TestReader < MiniTest::Unit::TestCase

  def setup
    WorldDb.delete!
    SportDb.delete!
    FootballDb.delete!
    PersonDb.delete!

    add_mls_2014
  end

  def add_mls_2014
    SportDb.read_builtin    ## add (builtin) seasons (e.g. 2014)

    us   = Country.create!( key: 'us', name: 'United States', code: 'USA', pop: 1, area: 1)

    ## fix: change title: to name:
    League.create!( key: 'mls', title: 'Major League Soccer', country_id: us.id )
    Team.create!( key: 'chicago', title: 'Chicago Fire', code: 'CHI', country_id: us.id )

    assert_equal 1, League.count
    assert_equal 1, Team.count

    ### todo/fix: change/will get renamed to MatchReader
    gamereader = GameReader.new( FootballDb.test_data_path )
    gamereader.read( 'major-league-soccer/2014/mls' )

    assert_equal 1, Event.count
    
    mls = Event.find_by_key!( 'mls.2014' )
    assert_equal 1, mls.teams.count   # note: for testing only one team included for now (chicago)
  end


  def test_stats_reader
    assert_equal 0, Person.count
    assert_equal 0, Roster.count    ## note: will get renames to Squad
    assert_equal 0, PlayerStat.count

    ## now add some persons
    seanjohnson    = Person.create!( key: 'seanjohnson',    name: 'Sean Johnson' )
    gregcochrane   = Person.create!( key: 'gregcochrane',   name: 'Greg Cochrane' )
    quincyamarikwa = Person.create!( key: 'quincyamarikwa', name: 'Quincy Amarikwa' )

    assert_equal 3, Person.count
    
    mls     = Event.find_by_key!( 'mls.2014' )
    chicago = Team.find_by_key!( 'chicago' )
  end


end # class TestReader
