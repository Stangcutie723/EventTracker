require 'test_helper'

class EventListsControllerTest < ActionController::TestCase
  setup do
    @event_list = event_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_list" do
    assert_difference('EventList.count') do
      post :create, event_list: { date: @event_list.date, title: @event_list.title }
    end

    assert_redirected_to event_list_path(assigns(:event_list))
  end

  test "should show event_list" do
    get :show, id: @event_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_list
    assert_response :success
  end

  test "should update event_list" do
    patch :update, id: @event_list, event_list: { date: @event_list.date, title: @event_list.title }
    assert_redirected_to event_list_path(assigns(:event_list))
  end

  test "should destroy event_list" do
    assert_difference('EventList.count', -1) do
      delete :destroy, id: @event_list
    end

    assert_redirected_to event_lists_path
  end
end
