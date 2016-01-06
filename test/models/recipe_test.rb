require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  def setup
    @chef=Chef.create(name:"Varun Raju", email:"varun@example.com")
    @recipe= @chef.recipes.new(name:"Butter Chicken Masala", summary: "Follow the recipe to create a very tasty buter chicken", 
                     description: "Heat Oil, cut tomatoes and onions,add them to oil and heat, add tomato sauce and 4 cups of butter,add chicken,add butter chicken masala,cook for 30 mins")
  end 
   
  test 'recipe_should_be_valid'  do
    assert @recipe.valid?
  end
  
  test 'name_should_be_present' do
  @recipe.name=" "
  assert_not @recipe.valid?
  end
  
  test 'chef_id must be present' do
  @recipe.chef_id=nil
  assert_not @recipe.valid?
  end
  
  test 'name_length_should_not_be_too_long' do
  @recipe.name="a"*101
  assert_not @recipe.valid?
  end
  
  test 'name_length_should_not_be_too_short' do
  @recipe.name="a"
  assert_not @recipe.valid?
  end
  
   test 'summary_should_be_present' do
  @recipe.summary=" "
  assert_not @recipe.valid?
  end
  
    test 'summary_should_not_be_too_long' do
  @recipe.summary="a"*151
  assert_not @recipe.valid?
  end
  
  test 'summary_should_not_be_too_short' do
  @recipe.summary="a"
  assert_not @recipe.valid?
  end
  
   test 'description_should_be_present' do
  @recipe.description=" "
  assert_not @recipe.valid?
  end
  
     test 'description_should_not_be_too_long' do
  @recipe.description="a"*551
  assert_not @recipe.valid?
  end
  
  test 'description_should_not_be_too_short' do
  @recipe.description="a"
  assert_not @recipe.valid?
  end
  
  
end