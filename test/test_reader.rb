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

    SportDb.read_builtin    ## add (builtin) seasons (e.g. 2014)
  end

  def test_stats_reader

    assert_equal 0, Person.count
    assert_equal 0, Team.count
    assert_equal 0, Roster.count    ## note: will get renames to Squad
    assert_equal 0, PlayerStat.count

    ## now add some persons
    seanjohnson    = Person.create!( key: 'seanjohnson',    name: 'Sean Johnson' )
    gregcochrane   = Person.create!( key: 'gregcochrane',   name: 'Greg Cochrane' )
    quincyamarikwa = Person.create!( key: 'quincyamarikwa', name: 'Quincy Amarikwa' )

    assert_equal 3, Person.count

#    us = Country.create!( key: 'us', name: 'United States', code: 'USA', pop: 1, area: 1)
#    mls  = League.create!( key: 'mls', name: 'Major League Soccer', country_id: us_id )    
    
#    chicago = Team.create!( key: 'chicago', name: 'Chicago Fire', code: 'CHI', country_id: us.id )

#    assert_equal 1, League.count
#    assert_equal 1, Team.count
  end


end # class TestReader
