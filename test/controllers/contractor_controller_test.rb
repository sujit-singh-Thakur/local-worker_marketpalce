require "test_helper"

class ContractorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contractor_index_url
    assert_response :success
  end
end
