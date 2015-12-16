require 'rails_helper'

RSpec.describe BooksController, type: :controller do

  before :each do
    request.env["HTTP_ACCEPT"] = 'application/json'
  end

  context "index" do

    context "success" do

      before do
        @user = create(:user)
        @book_one = create(:book)
        @book_two = create(:book)
      end

      it "should return a 200" do
        get :index, :user_email => @user.email, :user_token => @user.authentication_token, :format => "json"
        expect(response).to have_http_status(:success)
      end

    end

  end

end
