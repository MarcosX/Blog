require "rack/jekyll"

run Rack::Jekyll.new(:destination => 'public')
use Rack::Static,
    :urls => ["/images", "/css"]
