# encoding: utf-8

require 'lambdalib/problem_helper'

begin
  assert Comment
  puts "#{ '✓'.green } Comment model defined."
rescue
  puts "#{ '✗'.red } #{ "Can't find the".white } #{ 'Comment'.red.bold } #{ "class.".white } You may need to #{ 'generate'.bold } that model!"
  exit 1
end

begin
  assert Comment.table_exists?
  puts "#{ '✓'.green } #{ "rake db:migration".white } run."
rescue
  puts "#{ '✗'.red } Can't find the table for the #{ 'Comment'.red.bold } model. You may need to #{ 'run migrations'.bold }."
  exit 1
end

attrs = { }
Comment.columns.each { |c| attrs[ c.name ] = c.type }

{ "body" => :text, "author" => :string, "website" => :string, "post_id" => :integer }.each do |key, val|
  unless attrs.has_key? key
    puts "#{ '✗'.red } #{ 'Comment'.cyan } missing #{ key.bold } attribute."
    exit 1
  end

  unless attrs[key] == val
    puts "#{ '✗'.red } #{ "Comment.#{ key }".cyan } should be of type #{ val.to_s.red }"
    exit 1
  end
end

unless Comment.reflect_on_association(:post).try(:macro) == :belongs_to
  puts "#{ '✗'.red } #{ "Comment".cyan } should #{ 'belong to'.bold } a #{ 'Post'.cyan } object."
  exit 1
end

unless Post.reflect_on_association(:comments).try(:macro) == :has_many
  puts "#{ '✗'.red } #{ "Post".cyan } should #{ 'have many'.bold } a #{ 'Comment'.cyan } objects."
  exit 1
end

puts "#{ '✓'.green } Associated Comments with Posts"

puts "#{ '✓'.green } Defined body, author, and website attributes for Comment."

puts
puts "#{ '✓'.green } #{ "Problem 1".cyan }: #{ 'Complete!'.green }"

