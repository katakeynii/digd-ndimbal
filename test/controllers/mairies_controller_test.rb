require "test_helper"

class MairiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mairy = mairies(:one)
  end

  test "should get index" do
    get mairies_url
    assert_response :success
  end

  test "should get new" do
    get new_mairy_url
    assert_response :success
  end

  test "should create mairy" do
    assert_difference("Mairie.count") do
      post mairies_url, params: { mairy: {  } }
    end

    assert_redirected_to mairy_url(Mairie.last)
  end

  test "should show mairy" do
    get mairy_url(@mairy)
    assert_response :success
  end

  test "should get edit" do
    get edit_mairy_url(@mairy)
    assert_response :success
  end

  test "should update mairy" do
    patch mairy_url(@mairy), params: { mairy: {  } }
    assert_redirected_to mairy_url(@mairy)
  end

  test "should destroy mairy" do
    assert_difference("Mairie.count", -1) do
      delete mairy_url(@mairy)
    end

    assert_redirected_to mairies_url
  end
end
