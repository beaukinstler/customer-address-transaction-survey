require 'test_helper'

class CatsControllerTest < ActionController::TestCase
  setup do
    @cat = cats(:one)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:cats)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create cat" do
  #   assert_difference('Cat.count') do
  #     post :create, cat: { after_city: @cat.after_city, after_state: @cat.after_state, after_street: @cat.after_street, after_type: @cat.after_type, after_zip: @cat.after_zip, amount_spent_today: @cat.amount_spent_today, before_city: @cat.before_city, before_state: @cat.before_state, before_street: @cat.before_street, before_type: @cat.before_type, before_zip: @cat.before_zip, location_prompting_visit: @cat.location_prompting_visit }
  #   end

  #   assert_redirected_to cat_path(assigns(:cat))
  # end

  # test "should show cat" do
  #   get :show, id: @cat
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, id: @cat
  #   assert_response :success
  # end

  # test "should update cat" do
  #   patch :update, id: @cat, cat: { after_city: @cat.after_city, after_state: @cat.after_state, after_street: @cat.after_street, after_type: @cat.after_type, after_zip: @cat.after_zip, amount_spent_today: @cat.amount_spent_today, before_city: @cat.before_city, before_state: @cat.before_state, before_street: @cat.before_street, before_type: @cat.before_type, before_zip: @cat.before_zip, location_prompting_visit: @cat.location_prompting_visit }
  #   assert_redirected_to cat_path(assigns(:cat))
  # end

  # test "should destroy cat" do
  #   assert_difference('Cat.count', -1) do
  #     delete :destroy, id: @cat
  #   end

  #   assert_redirected_to cats_path
  # end
end
