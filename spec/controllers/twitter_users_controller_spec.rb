require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe TwitterUsersController do

  def mock_twitter_user(stubs={})
    @mock_twitter_user ||= mock_model(TwitterUser, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all twitter_users as @twitter_users" do
      TwitterUser.stub(:all) { [mock_twitter_user] }
      get :index
      assigns(:twitter_users).should eq([mock_twitter_user])
    end
  end

  describe "GET show" do
    it "assigns the requested twitter_user as @twitter_user" do
      TwitterUser.stub(:find).with("37") { mock_twitter_user }
      get :show, :id => "37"
      assigns(:twitter_user).should be(mock_twitter_user)
    end
  end

  describe "GET new" do
    it "assigns a new twitter_user as @twitter_user" do
      TwitterUser.stub(:new) { mock_twitter_user }
      get :new
      assigns(:twitter_user).should be(mock_twitter_user)
    end
  end

  describe "GET edit" do
    it "assigns the requested twitter_user as @twitter_user" do
      TwitterUser.stub(:find).with("37") { mock_twitter_user }
      get :edit, :id => "37"
      assigns(:twitter_user).should be(mock_twitter_user)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created twitter_user as @twitter_user" do
        TwitterUser.stub(:new).with({'these' => 'params'}) { mock_twitter_user(:save => true) }
        post :create, :twitter_user => {'these' => 'params'}
        assigns(:twitter_user).should be(mock_twitter_user)
      end

      it "redirects to the created twitter_user" do
        TwitterUser.stub(:new) { mock_twitter_user(:save => true) }
        post :create, :twitter_user => {}
        response.should redirect_to(twitter_user_url(mock_twitter_user))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved twitter_user as @twitter_user" do
        TwitterUser.stub(:new).with({'these' => 'params'}) { mock_twitter_user(:save => false) }
        post :create, :twitter_user => {'these' => 'params'}
        assigns(:twitter_user).should be(mock_twitter_user)
      end

      it "re-renders the 'new' template" do
        TwitterUser.stub(:new) { mock_twitter_user(:save => false) }
        post :create, :twitter_user => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested twitter_user" do
        TwitterUser.stub(:find).with("37") { mock_twitter_user }
        mock_twitter_user.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :twitter_user => {'these' => 'params'}
      end

      it "assigns the requested twitter_user as @twitter_user" do
        TwitterUser.stub(:find) { mock_twitter_user(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:twitter_user).should be(mock_twitter_user)
      end

      it "redirects to the twitter_user" do
        TwitterUser.stub(:find) { mock_twitter_user(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(twitter_user_url(mock_twitter_user))
      end
    end

    describe "with invalid params" do
      it "assigns the twitter_user as @twitter_user" do
        TwitterUser.stub(:find) { mock_twitter_user(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:twitter_user).should be(mock_twitter_user)
      end

      it "re-renders the 'edit' template" do
        TwitterUser.stub(:find) { mock_twitter_user(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested twitter_user" do
      TwitterUser.stub(:find).with("37") { mock_twitter_user }
      mock_twitter_user.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the twitter_users list" do
      TwitterUser.stub(:find) { mock_twitter_user }
      delete :destroy, :id => "1"
      response.should redirect_to(twitter_users_url)
    end
  end

end
