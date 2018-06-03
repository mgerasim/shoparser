require 'test_helper'

class TovarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tovar = tovars(:one)
  end

  test "should get index" do
    get tovars_url
    assert_response :success
  end

  test "should get new" do
    get new_tovar_url
    assert_response :success
  end

  test "should create tovar" do
    assert_difference('Tovar.count') do
      post tovars_url, params: { tovar: { name: @tovar.name } }
    end

    assert_redirected_to tovar_url(Tovar.last)
  end

  test "should show tovar" do
    get tovar_url(@tovar)
    assert_response :success
  end

  test "should get edit" do
    get edit_tovar_url(@tovar)
    assert_response :success
  end

  test "should update tovar" do
    patch tovar_url(@tovar), params: { tovar: { name: @tovar.name } }
    assert_redirected_to tovar_url(@tovar)
  end

  test "should destroy tovar" do
    assert_difference('Tovar.count', -1) do
      delete tovar_url(@tovar)
    end

    assert_redirected_to tovars_url
  end
end
