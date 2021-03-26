class CollectionsController < ApplicationController
  def index; end

  def create
    redirect_to(action: :show, id: 5)
  end
end