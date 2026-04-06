# test/models/notice_test.rb
require "test_helper"

class NoticeTest < ActiveSupport::TestCase
  test "should not save notice without required fields" do
    notice = Notice.new
    assert_not notice.save, "Saved the notice without a title, body, or author"
  end

  test "title should not exceed 100 characters" do
    notice = Notice.new(
      title: "a" * 101, 
      body: "Valid body", 
      author_name: "Test", 
      category: "General"
    )
    assert_not notice.valid?
    assert_includes notice.errors[:title], "is too long (maximum is 100 characters)"
  end

  test "notices should be ordered with pinned first" do
    Notice.create!(title: "Unpinned", body: "Text", author_name: "A", category: "General", pinned: false)
    pinned = Notice.create!(title: "Pinned", body: "Text", author_name: "B", category: "General", pinned: true)
    
    # Check if the first notice in the ordered list is the pinned one
    assert_equal pinned, Notice.order(pinned: :desc, created_at: :desc).first
  end
end