require 'test_helper'

class AlimsatimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alimsatim = alimsatims(:one)
  end

  test "should get index" do
    get alimsatims_url
    assert_response :success
  end

  test "should get new" do
    get new_alimsatim_url
    assert_response :success
  end

  test "should create alimsatim" do
    assert_difference('Alimsatim.count') do
      post alimsatims_url, params: { alimsatim: { bilgiler: @alimsatim.bilgiler, fiyat: @alimsatim.fiyat, urunadi: @alimsatim.urunadi } }
    end

    assert_redirected_to alimsatim_url(Alimsatim.last)
  end

  test "should show alimsatim" do
    get alimsatim_url(@alimsatim)
    assert_response :success
  end

  test "should get edit" do
    get edit_alimsatim_url(@alimsatim)
    assert_response :success
  end

  test "should update alimsatim" do
    patch alimsatim_url(@alimsatim), params: { alimsatim: { bilgiler: @alimsatim.bilgiler, fiyat: @alimsatim.fiyat, urunadi: @alimsatim.urunadi } }
    assert_redirected_to alimsatim_url(@alimsatim)
  end

  test "should destroy alimsatim" do
    assert_difference('Alimsatim.count', -1) do
      delete alimsatim_url(@alimsatim)
    end

    assert_redirected_to alimsatims_url
  end
end
