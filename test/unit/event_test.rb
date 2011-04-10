require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "json should include 'start' param" do
    event = events(:one)
    assert event.to_json.include?("\"start\"")
  end
  
  test "json should include 'end' param" do
    event = events(:one)
    assert event.to_json.include?("\"end\"")
  end
  
  test "json should include 'title' param" do
    event = events(:one)
    assert event.to_json.include?("\"title\"")
  end
  
  test "json should include 'allDay' param" do
    event = events(:one)
    assert event.to_json.include?("\"allDay\"")
  end
  
  test "json should include 'recurring' param" do
    event = events(:one)
    assert event.to_json.include?("\"recurring\"")
  end
end
