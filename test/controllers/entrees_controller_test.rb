require "test_helper"

class EntreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entree = entrees(:one)
  end

  test "should get index" do
    get entrees_url
    assert_response :success
  end

  test "should get new" do
    get new_entree_url
    assert_response :success
  end

  test "should create entree" do
    assert_difference('Entree.count') do
      post entrees_url, params: { entree: { date: @entree.date, montantin: @entree.montantin, motif: @entree.motif } }
    end

    assert_redirected_to entree_url(Entree.last)
  end

  test "should show entree" do
    get entree_url(@entree)
    assert_response :success
  end

  test "should get edit" do
    get edit_entree_url(@entree)
    assert_response :success
  end

  test "should update entree" do
    patch entree_url(@entree), params: { entree: { date: @entree.date, montantin: @entree.montantin, motif: @entree.motif } }
    assert_redirected_to entree_url(@entree)
  end

  test "should destroy entree" do
    assert_difference('Entree.count', -1) do
      delete entree_url(@entree)
    end

    assert_redirected_to entrees_url
  end
end
