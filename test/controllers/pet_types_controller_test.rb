require 'test_helper'

class PetTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_type = pet_types(:one)
  end

  test "should get index" do
    get pet_types_url, as: :json
    assert_response :success
  end

  test "should create pet_type" do
    assert_difference('PetType.count') do
      post pet_types_url, params: { pet_type: { belongs_to: @pet_type.belongs_to, bird: @pet_type.bird, cat: @pet_type.cat, dog: @pet_type.dog, small_animal: @pet_type.small_animal } }, as: :json
    end

    assert_response 201
  end

  test "should show pet_type" do
    get pet_type_url(@pet_type), as: :json
    assert_response :success
  end

  test "should update pet_type" do
    patch pet_type_url(@pet_type), params: { pet_type: { belongs_to: @pet_type.belongs_to, bird: @pet_type.bird, cat: @pet_type.cat, dog: @pet_type.dog, small_animal: @pet_type.small_animal } }, as: :json
    assert_response 200
  end

  test "should destroy pet_type" do
    assert_difference('PetType.count', -1) do
      delete pet_type_url(@pet_type), as: :json
    end

    assert_response 204
  end
end
