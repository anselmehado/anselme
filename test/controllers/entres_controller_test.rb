require "test_helper"

class EntresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entre = entres(:one)
  end

  test "should get index" do
    get entres_url
    assert_response :success
  end

  test "should get new" do
    get new_entre_url
    assert_response :success
  end

  test "should create entre" do
    assert_difference('Entre.count') do
      post entres_url, params: { entre: { date: @entre.date, montant_in: @entre.montant_in, motif: @entre.motif } }
    end

    assert_redirected_to entre_url(Entre.last)
  end

  test "should show entre" do
    get entre_url(@entre)
    assert_response :success
  end

  test "should get edit" do
    get edit_entre_url(@entre)
    assert_response :success
  end

  test "should update entre" do
    patch entre_url(@entre), params: { entre: { date: @entre.date, montant_in: @entre.montant_in, motif: @entre.motif } }
    assert_redirected_to entre_url(@entre)
  end

  test "should destroy entre" do
    assert_difference('Entre.count', -1) do
      delete entre_url(@entre)
    end

    assert_redirected_to entres_url
  end
end
