Gem::Specification.new do |s|
  s.name = "sportdb-footballstats"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Carl Svensson","Gerald Bauer"]
  s.date = "2014-07-27"
  s.description = "sportdb-footballstats - A plugin for sportdb that adds support for stats"
  s.summary = "An extension to sportdb that adds stats to players."
  s.email = "opensport@googlegroups.com"
  s.extra_rdoc_files = ["README.md"]

  # Just include everything...
  path = File.expand_path('.')
  all_files = Gem.find_files("#{path}/lib/*/*") + Gem.find_files("#{path}/lib/*") + Gem.find_files("#{path}/lib/*/*/*") 

  # Make it a relative path...
  all_files.each do |f|
    s.files << f.split('football.db.stats/')[1]
  end

  s.homepage = "https://github.com/sportdb/football.db.stats"
  s.licenses = ["Public Domain"]
  s.post_install_message = "******************************************************************************\n\nQuestions? Comments? Send them along to the mailing list.\nhttps://groups.google.com/group/opensport\n\n******************************************************************************\n"
  s.require_paths = ["lib"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<props>, [">= 0"])
      s.add_runtime_dependency(%q<logutils>, [">= 0"])
      s.add_runtime_dependency(%q<textutils>, [">= 0"])
      s.add_runtime_dependency(%q<worlddb>, [">= 2.0.2"])
      s.add_runtime_dependency(%q<tagutils>, [">= 0"])
      s.add_runtime_dependency(%q<persondb>, [">= 0"])
      s.add_runtime_dependency(%q<activerecord-utils>, [">= 0"])
      s.add_runtime_dependency(%q<fetcher>, [">= 0.3"])
      s.add_runtime_dependency(%q<gli>, [">= 2.5.6"])
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_runtime_dependency(%q<sportdb>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.11"])
    else
      s.add_dependency(%q<props>, [">= 0"])
      s.add_dependency(%q<logutils>, [">= 0"])
      s.add_dependency(%q<textutils>, [">= 0"])
      s.add_dependency(%q<worlddb>, [">= 2.0.2"])
      s.add_dependency(%q<tagutils>, [">= 0"])
      s.add_dependency(%q<persondb>, [">= 0"])
      s.add_dependency(%q<activerecord-utils>, [">= 0"])
      s.add_dependency(%q<fetcher>, [">= 0.3"])
      s.add_dependency(%q<gli>, [">= 2.5.6"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<sportdb>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.11"])
    end
  else
    s.add_dependency(%q<props>, [">= 0"])
    s.add_dependency(%q<logutils>, [">= 0"])
    s.add_dependency(%q<textutils>, [">= 0"])
    s.add_dependency(%q<worlddb>, [">= 2.0.2"])
    s.add_dependency(%q<tagutils>, [">= 0"])
    s.add_dependency(%q<persondb>, [">= 0"])
    s.add_dependency(%q<activerecord-utils>, [">= 0"])
    s.add_dependency(%q<fetcher>, [">= 0.3"])
    s.add_dependency(%q<gli>, [">= 2.5.6"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<sportdb>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.11"])
  end
end
