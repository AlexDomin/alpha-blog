require 'test_helper'

class CatergoryTest < ActiveSupport::TestCase

  test "category should be valid" do
    @category = Category.new(name: "sports")
    assert @category.valid?
  end

end