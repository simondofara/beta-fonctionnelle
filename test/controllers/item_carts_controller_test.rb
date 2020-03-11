require 'test_helper'

class ItemCartsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get index" do
    get item_carts_index_url
    assert_response :success
  end

  test "should get show" do
    get item_carts_show_url
    assert_response :success
  end

  test "should get new" do
    get item_carts_new_url
    assert_response :success
  end

  test "should get edit" do
    get item_carts_edit_url
    assert_response :success
  end

  test "should get create" do
    get item_carts_create_url
    assert_response :success
  end

>>>>>>> c3ce46a0b901f41c2e591ab270c9136d0ebc7323
end
