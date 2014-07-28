require 'test_helper'

class ImageUploadersControllerTest < ActionController::TestCase
  setup do
    @image_uploader = image_uploaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_uploaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_uploader" do
    assert_difference('ImageUploader.count') do
      post :create, image_uploader: { description: @image_uploader.description, image: @image_uploader.image, title: @image_uploader.title }
    end

    assert_redirected_to image_uploader_path(assigns(:image_uploader))
  end

  test "should show image_uploader" do
    get :show, id: @image_uploader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_uploader
    assert_response :success
  end

  test "should update image_uploader" do
    patch :update, id: @image_uploader, image_uploader: { description: @image_uploader.description, image: @image_uploader.image, title: @image_uploader.title }
    assert_redirected_to image_uploader_path(assigns(:image_uploader))
  end

  test "should destroy image_uploader" do
    assert_difference('ImageUploader.count', -1) do
      delete :destroy, id: @image_uploader
    end

    assert_redirected_to image_uploaders_path
  end
end
