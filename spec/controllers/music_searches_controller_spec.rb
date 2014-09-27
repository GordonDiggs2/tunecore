require 'spec_helper'

describe MusicSearchesController, :type => :controller do
  describe "GET index" do
    describe "without a search term" do
      it "assigns flash[:error]" do
        request.env["HTTP_REFERER"] = '/'
        get :index, {}
        expect(request.flash[:error]).to_not be_nil
        expect(response).to redirect_to('/')
      end
    end

    describe "with a search term" do
      it "assigns results" do
        get :index, {q: 'sup'}
        expect(assigns(:results)).to_not be_nil
      end
    end
  end
end
