require 'test/test_helper'

puts "$pset/test/unit/comment_test.rb loaded"

class CommentTest < Test::Unit::TestCase
  def test_comment_defined
    assert_nothing_raised NameError, "Shouldn't get NameError" do
        assert Comment
    end

    #assert Comment, "Comment isn't defined. You may need to generate the model!"
  end
end

