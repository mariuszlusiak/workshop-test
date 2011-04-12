require 'spec_helper'

describe "twitter_users/show.html.erb" do
  before(:each) do
    @twitter_user = assign(:twitter_user, stub_model(TwitterUser,
      :user_id => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
