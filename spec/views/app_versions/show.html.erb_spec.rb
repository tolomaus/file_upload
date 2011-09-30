require 'spec_helper'

describe "app_versions/show.html.erb" do
  before(:each) do
    @app_version = assign(:app_version, stub_model(AppVersion,
      :app => "",
      :version => "Version"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Version/)
  end
end
