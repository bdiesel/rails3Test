require 'spec_helper'

describe Role do
  before(:each) do
    @admin = Factory(:role, :name => 'Admin')
    @registered_user = Factory(:role, :name => 'registered_user')
  end

  describe "validations" do
    it "should be valid" do
      @tv_station_role.should be_valid
      @sysop_role.should be_valid
    end
    it "should not be valid with out a name" do
      @tv_station_role.name = nil
      @tv_station_role.should_not be_valid
    end
  end
end
