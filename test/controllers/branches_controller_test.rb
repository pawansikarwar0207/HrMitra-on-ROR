require "test_helper"

class BranchesControllerTest < ActionDispatch::IntegrationTest
  test "should get branch_1" do
    get branches_branch_1_url
    assert_response :success
  end

  test "should get branch_2" do
    get branches_branch_2_url
    assert_response :success
  end

  test "should get branch_3" do
    get branches_branch_3_url
    assert_response :success
  end
end
