class CardsController < ApplicationController
  def create
    Collection.create(title: params[:title])
    redirect_to(action: :show, id: 5)
  end

  def search
    name = params['name']

    cards = CardSearch.for(query: name)
    processed_cards = cards.map do |card| 
      {
        name: card.name,
        id: card.id
    }
    end
    render json: processed_cards.to_json
  end
end