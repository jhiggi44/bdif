class CollectionsController < ApplicationController
  def index; end

  def create
    Collection.create(title: params[:title])
    redirect_to(action: :show, id: 5)
  end
end