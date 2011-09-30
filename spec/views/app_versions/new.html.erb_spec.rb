require 'spec_helper'

describe "app_versions/new.html.erb" do
  before(:each) do
    assign(:app_version, stub_model(AppVersion,
      :app => "",
      :version => "MyString"
    ).as_new_record)
  end

  it "renders new app_version form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => app_versions_path, :method => "post" do
      assert_select "input#app_version_app", :name => "app_version[app]"
      assert_select "input#app_version_version", :name => "app_version[version]"
    end
  end
end
