source "http://rubygems.org"
#source 'http://gems.github.com'

# Rails gems
gem "rails", "2.3.17", :require => nil              # 2.3.17 mar13 / upgraded to 2.3.15 jan2013 // upgraded from 2.3.8 may2012
gem 'rdoc'                                          # added jan2013

gem "rack", "~> 1.1.4"

gem "git", "1.2.5"                                  # ok may2012

gem "image_science", "1.2.1"                        # was 1.1.3 at some point
gem "json", "1.7.7"                                 # u/g from 1.4.3 mar13 <<<< maybe use "~> 1.4.6"????
gem "json_pure", "1.7.7"                            # u/g 1.4.3 mar13

gem "unicorn", "~> 4.3.1"                           # replaced and updated may2012

gem "rubyforge", "2.0.4"                            # ok may2012
gem "rubygems-update", "1.3.7"                      #

gem "rspec", "1.3.0"                                # <<<< There's also a plugin installed?
gem "rspec-rails", "1.3.2"                          # <<<< There's also a plugin installed?


group :development do
  gem "ruby-debug", "0.10.3"
  gem "ruby-debug-base", "0.10.3"
  gem 'pry'
  gem 'pry-nav'
  gem 'ruby18_source_location'

  gem "coffee-script", "2.2.0", :require => false # need coffee ?
  gem "coffee-script-source", "1.6.3"
  gem "sass", "3.2.10", :require => false
  gem "sprockets-sass", :require => false
  gem "sprockets-helpers", :require => false
  gem "ejs", :require => false # support for jst templates server side

  # FIXME: sprockets-source-url seemed like a good idea - until it turned out
  # that it makes all JS be wrapped in an 'eval' making debugging hard:
  # gem "sprockets-source-url", :require => false

  gem "compass-rails", :require => false

  #gem "better_errors"
  #gem "binding_of_caller"

  gem "sqlite3"

  gem "slimgems"
end

#####################
# DUI SPECIFIC GEMS #
#####################

# See: https://github.com/apotonick/cells/tree/31f6ed82b87b3f92613698442fae6fd61cc16de9#rails-23-note
gem 'cells', '~> 3.3.9'

#gem 'jrails', '~> 0.6.0'
# Using script/plugin install git://github.com/aaronchi/jrails.git instead

gem "rails2_asset_pipeline"
gem "execjs", "2.0.2"

# For now we have to do without the gem's helpers ...
# gem 'font-awesome-less', '~> 4.2.0'
