require 'lambdalib/problem'

module Poc1Pset
  class Pset < Lambdalib::Pset
    class UpAndRunning < Lambdalib::Pset::Problem
      short_name "Up and Running"

      add_test :bundle
      add_test :rails_s
    end
  end
end
