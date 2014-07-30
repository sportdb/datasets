require 'hoe'
require './lib/footballdb/version.rb'

Hoe.spec 'footballdb' do

  self.version = FootballDb::VERSION

  self.summary = 'footballdb -  football.db.stats - add-on to sport.db for football stats etc.'
  self.description = summary

  self.urls = ['https://github.com/sportdb/football.db.stats']

  ## note: does not work - no authors defined? only author
  ## self.authors = [ 'Carl Svensson', 'Gerald Bauer' ]
  ## self.email = 'opensport@googlegroups.com'
  
  developer 'Carl Svensson', 'opensport@googlegroups.com'
  developer 'Gerald Bauer',  'opensport@googlegroups.com'

  # switch extension to .markdown for gihub formatting
  self.readme_file = 'README.md'
  self.history_file = 'HISTORY.md'

  self.licenses = ['Public Domain']

  self.spec_extras = {
   :required_ruby_version => '>= 1.9.2'
  }
end
