
require 'lambdalib/pset'

module Poc1Pset
  class Problem1 < Lambdalib::Pset
    # TODO refactor
    root_dir File.dirname(__FILE__)

    short_name "Problem 1"
    description "Create a model `Comment` that includes three attributes: `body`, `author`, and `website`."
    add_test 'problem/problem1_comment.rb'
  end
end

