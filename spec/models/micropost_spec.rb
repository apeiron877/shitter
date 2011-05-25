require File.dirname(__FILE__) + '/../spec_helper'

describe Micropost do
  it "should be valid" do
    Micropost.new.should be_valid
  end
end
