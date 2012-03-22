require "poc1_pset/version"

# Include the problems here...
#require "poc1_pset/problem1"

Dir[File.join(File.dirname(__FILE__),'poc1_pset/problem/*.rb')].each { |ext| load ext }

module Poc1Pset
  ROOT_DIR = File.expand_path File.join( File.dirname(__FILE__), '..' )
end
