require 'test_helper'

class EmplosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emplo = emplos(:one)
  end

  test "should get index" do
    get emplos_url
    assert_response :success
  end

  test "should get new" do
    get new_emplo_url
    assert_response :success
  end

  test "should create emplo" do
    assert_difference('Emplo.count') do
      post emplos_url, params: { emplo: { last: @emplo.last, name: @emplo.name, section: @emplo.section } }
    end

    assert_redirected_to emplo_url(Emplo.last)
  end

  test "should show emplo" do
    get emplo_url(@emplo)
    assert_response :success
  end

  test "should get edit" do
    get edit_emplo_url(@emplo)
    assert_response :success
  end

  test "should update emplo" do
    patch emplo_url(@emplo), params: { emplo: { last: @emplo.last, name: @emplo.name, section: @emplo.section } }
    assert_redirected_to emplo_url(@emplo)
  end

  test "should destroy emplo" do
    assert_difference('Emplo.count', -1) do
      delete emplo_url(@emplo)
    end

    assert_redirected_to emplos_url
  end
end
