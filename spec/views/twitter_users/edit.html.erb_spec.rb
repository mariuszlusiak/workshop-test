require 'spec_helper'

describe "twitter_users/edit.html.erb" do
  before(:each) do
    @twitter_user = assign(:twitter_user, stub_model(TwitterUser,
      :user_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit twitter_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => twitter_users_path(@twitter_user), :method => "post" do
      assert_select "input#twitter_user_user_id", :name => "twitter_user[user_id]"
      assert_select "input#twitter_user_name", :name => "twitter_user[name]"
    end
  end
end
