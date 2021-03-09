require 'test_helper'

class EventControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:two)
    @event = events(:one)
  end

  # test 'should get new' do
  #   get event_new_url
  #   assert_response :success
  # end

  # test 'should get show' do
  #   get event_show_url
  #   assert_response :success
  # end

  # test 'should get create' do
  #   get event_create_url
  #   assert_response :success
  # end

  test 'attend should create a new attendance' do
    assert_difference('Attendance.count', 1) do
       post attend_event_url(@user.id)
      # @user.attended_events << @event
    end
    
    # assert_redirected_to show_path
  end
end
