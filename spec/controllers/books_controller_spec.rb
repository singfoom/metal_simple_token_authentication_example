require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  before :each do
    request.env["HTTP_ACCEPT"] = 'application/json'
  end

  context "#index" do

    context "with correct credentials" do

      before do
        @user = create(:user)
        @book_one = create(:book)
        @book_two = create(:book)
      end

      it "should respond with 200 OK" do
        get :index, :user_email => @user.email, :user_token => @user.authentication_token, :format => "json"
        expect(response).to have_http_status(:success)
      end

    end

    context "when credentials are incorrect" do

      before do
        @user = create(:user)
        @book_one = create(:book)
        @book_two = create(:book)
      end

      it "should respond with 401 Unauthorized" do
        get :index, :user_email => @user.email, :user_token => 'InCoRrect_T0kEn', :format => "json"
        expect(response).to have_http_status(:unauthorized)
      end

    end

    context "when credentials are missing" do

      before do
        @user = create(:user)
        @book_one = create(:book)
        @book_two = create(:book)
      end

      it "should respond with 401 Unauthorized" do
        get :index, :format => "json"
        expect(response).to have_http_status(:unauthorized)
      end

    end

  end

end
