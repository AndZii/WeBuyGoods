require 'test_helper'

class CauruselImagesControllerTest < ActionController::TestCase
  setup do
    @caurusel_image = caurusel_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caurusel_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caurusel_image" do
    assert_difference('CauruselImage.count') do
      post :create, caurusel_image: { img: @caurusel_image.img, name: @caurusel_image.name }
    end

    assert_redirected_to caurusel_image_path(assigns(:caurusel_image))
  end

  test "should show caurusel_image" do
    get :show, id: @caurusel_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caurusel_image
    assert_response :success
  end

  test "should update caurusel_image" do
    patch :update, id: @caurusel_image, caurusel_image: { img: @caurusel_image.img, name: @caurusel_image.name }
    assert_redirected_to caurusel_image_path(assigns(:caurusel_image))
  end

  test "should destroy caurusel_image" do
    assert_difference('CauruselImage.count', -1) do
      delete :destroy, id: @caurusel_image
    end

    assert_redirected_to caurusel_images_path
  end
end
