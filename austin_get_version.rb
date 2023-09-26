
require './lib/mastodon/version.rb'

print Mastodon::Version.to_a.join('.')
