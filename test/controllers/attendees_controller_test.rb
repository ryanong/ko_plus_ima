require 'test_helper'

class AttendeesControllerTest < ActionController::TestCase
  setup do
    @attendee = attendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendee" do
    assert_difference('Attendee.count') do
      post :create, attendee: { dietary_restrictions: @attendee.dietary_restrictions, dinner: @attendee.dinner, dinner_attendee: @attendee.dinner_attendee, favorite_drink: @attendee.favorite_drink, lodging: @attendee.lodging, sunday_breakfast: @attendee.sunday_breakfast, transportation: @attendee.transportation, wedding: @attendee.wedding, welcome_drinks: @attendee.welcome_drinks }
    end

    assert_redirected_to attendee_path(assigns(:attendee))
  end

  test "should show attendee" do
    get :show, id: @attendee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendee
    assert_response :success
  end

  test "should update attendee" do
    patch :update, id: @attendee, attendee: { dietary_restrictions: @attendee.dietary_restrictions, dinner: @attendee.dinner, dinner_attendee: @attendee.dinner_attendee, favorite_drink: @attendee.favorite_drink, lodging: @attendee.lodging, sunday_breakfast: @attendee.sunday_breakfast, transportation: @attendee.transportation, wedding: @attendee.wedding, welcome_drinks: @attendee.welcome_drinks }
    assert_redirected_to attendee_path(assigns(:attendee))
  end

  test "should destroy attendee" do
    assert_difference('Attendee.count', -1) do
      delete :destroy, id: @attendee
    end

    assert_redirected_to attendees_path
  end
end
