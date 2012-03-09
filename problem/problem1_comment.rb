# encoding: utf-8

require 'lambdalib/problem_helper'

begin
  assert Comment
  puts "#{ '✓'.green } Comment model defined."
rescue
  puts "#{ '✗'.red } #{ "Can't find the".white } #{ 'Comment'.red.bold } #{ "class.".white } You may need to #{ 'generate'.bold } that model!"
end

