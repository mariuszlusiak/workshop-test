require "spec_helper"

describe TwitterUsersController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/twitter_users" }.should route_to(:controller => "twitter_users", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/twitter_users/new" }.should route_to(:controller => "twitter_users", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/twitter_users/1" }.should route_to(:controller => "twitter_users", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/twitter_users/1/edit" }.should route_to(:controller => "twitter_users", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/twitter_users" }.should route_to(:controller => "twitter_users", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/twitter_users/1" }.should route_to(:controller => "twitter_users", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/twitter_users/1" }.should route_to(:controller => "twitter_users", :action => "destroy", :id => "1")
    end

  end
end
