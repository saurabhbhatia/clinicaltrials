source :rubygems

# platform :jruby do
#   gem "activerecord-jdbc-adapter", :git => "https://github.com/nicksieger/activerecord-jdbc-adapter.git"
#   gem "activerecord-jdbcmysql-adapter"
#   gem "activerecord-jdbcpostgresql-adapter"
#   gem "activerecord-jdbcsqlite3-adapter"
# end

platform :ruby do
  gem "mysql2", "~> 0.3.6"
  gem "pg", "~> 0.11.0"
  gem "sqlite3", "~> 1.3.4"
end

gem "activerecord", "~> 3.1.1"
gem "minitest", "~> 2.4.0"
gem "mocha", "~> 0.9.12"
gem "railties", "~> 3.1.1"
gem "rake"
