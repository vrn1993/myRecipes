require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  
  def setup
    @chef= Chef.new(name:"Varun", email:"vrnraju@gmail.com")
  end 
   
     test 'chef_should_be_valid'  do
    assert @chef.valid?
  end
  
  test 'chefname_should_be_present' do
  @chef.name=" "
  assert_not @chef.valid?
  end
  
  test 'chefname_length_should_not_be_too_long' do
  @chef.name="a"*41
  assert_not @chef.valid?
  end
  
  test 'chefname_length_should_not_be_too_short' do
  @chef.name="a"*2
  assert_not @chef.valid?
  end
  
    test 'email_should_be_valid'  do
    assert @chef.valid?
  end
  
  test 'email_should_be_present' do
  @chef.email=" "
  assert_not @chef.valid?
  end
  
   test 'email_length_should_not_be_too_long' do
  @chef.email="a"*101+"example.com"
  assert_not @chef.valid?
  end
  
  test 'email_should_be_unique' do
  dup=@chef.dup
  dup.email=@chef.email.downcase
  @chef.save
  assert_not dup.valid?
  end
  
 

  
    test 'accept_valid_email_addresses' do
  validaddresses=%w[user@eee.com R_TDSE@eee.hello.org user@example.com first.last@eem.eu laura+joe@monk.cm]
  validaddresses.each do |val|
  @chef.email=val
  assert @chef.valid? ,'#{va.inspect}should be valid'
end
  end
  
    test 'reject_invalid_email_addresses' do
  invalidaddresses=%w[user@eee,com R_TDSE.hello.org user@example. first.last@ee__m_.eu laura+joe@monk+aar.com]
  invalidaddresses.each do |inval|
  @chef.email=inval
  assert_not @chef.valid? ,"#{inval.inspect}should be invalid"
end
  end
  
  
  
end