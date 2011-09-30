require 'spec_helper'

describe App do
  before(:each) do
    @app = Factory.build(:app)
  end
  it "is valid with proper values" do
    @app.should be_valid
  end
  it "is not valid without a name" do
    @app.name = nil
    @app.should_not be_valid
  end
  it "is not valid without a description" do
    @app.description = nil
    @app.should_not be_valid
  end

end
