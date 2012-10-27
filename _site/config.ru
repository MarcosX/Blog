require "rack/jekyll"

use Rack::Static,
    :urls => ["/css", "/js"]
run Rack::Jekyll.new(:destination => 'public')
