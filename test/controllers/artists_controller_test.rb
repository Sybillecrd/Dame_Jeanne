require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get artists_name_url
    assert_response :success
  end

  test "should get job" do
    get artists_job_url
    assert_response :success
  end

  test "should get avatar" do
    get artists_avatar_url
    assert_response :success
  end

end
