require File.dirname(__FILE__) + '/spec_helper'

CLIENT = File.dirname(__FILE__) + "/sample_client.rb"

describe PetiteLettre do
  def response_for(hash)
    PetiteLettre.call("ruby #{CLIENT}",hash)
  end
  
  it "allows to send a simple message and get an answer" do
    response_for({ :a => 5, :b => 2.0 }).should == 5/2.0
  end

  it "understands errors" do
    lambda { response_for({ :a => 5, :b => 0}) }.should raise_error("divided by 0")
  end
  
end
