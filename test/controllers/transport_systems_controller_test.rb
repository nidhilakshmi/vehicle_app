require "test_helper"

class TransportSystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transport_system = transport_systems(:one)
  end

  test "should get index" do
    get transport_systems_url
    assert_response :success
  end

  test "should get new" do
    get new_transport_system_url
    assert_response :success
  end

  test "should create transport_system" do
    assert_difference('TransportSystem.count') do
      post transport_systems_url, params: { transport_system: { model: @transport_system.model, name: @transport_system.name } }
    end

    assert_redirected_to transport_system_url(TransportSystem.last)
  end

  test "should show transport_system" do
    get transport_system_url(@transport_system)
    assert_response :success
  end

  test "should get edit" do
    get edit_transport_system_url(@transport_system)
    assert_response :success
  end

  test "should update transport_system" do
    patch transport_system_url(@transport_system), params: { transport_system: { model: @transport_system.model, name: @transport_system.name } }
    assert_redirected_to transport_system_url(@transport_system)
  end

  test "should destroy transport_system" do
    assert_difference('TransportSystem.count', -1) do
      delete transport_system_url(@transport_system)
    end

    assert_redirected_to transport_systems_url
  end
end
