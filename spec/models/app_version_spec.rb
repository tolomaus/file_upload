require 'spec_helper'

describe AppVersion do
  before(:each) do
    @app_version = Factory.build(:app_version)
  end
  it "is valid with proper values" do
    @app_version.should be_valid
  end
  it "is not valid without a version" do
    @app_version.version = nil
  end
end
