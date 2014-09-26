class MusicSearchesController < ApplicationController
  before_filter :require_search_term

  def index
    @results = MusicSearch.search(params[:q]).map { |r| MusicSearchResultPresenter.new(r) }
  end

  private def require_search_term
    if params[:q].blank?
      flash[:error] = "Please provide a search term"
      redirect_to :back
    end
  end
end
