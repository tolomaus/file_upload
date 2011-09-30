require 'spec_helper'

describe "app_versions/edit.html.erb" do
  before(:each) do
    @app_version = assign(:app_version, stub_model(AppVersion,
      :app => "",
      :version => "MyString"
    ))
  end

  it "renders the edit app_version form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => app_versions_path(@app_version), :method => "post" do
      assert_select "input#app_version_app", :name => "app_version[app]"
      assert_select "input#app_version_version", :name => "app_version[version]"
    end
  end
end
