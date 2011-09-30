require 'spec_helper'

describe "app_versions/index.html.erb" do
  before(:each) do
    assign(:app_versions, [
      stub_model(AppVersion,
        :app => "",
        :version => "Version"
      ),
      stub_model(AppVersion,
        :app => "",
        :version => "Version"
      )
    ])
  end

  it "renders a list of app_versions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Version".to_s, :count => 2
  end
end
