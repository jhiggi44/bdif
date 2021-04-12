class FakeCardSearch
  class FakeCard
    attr_reader :id, :name

    def initialize(id:, name:)
      @id = id
      @name = name
    end
  end

  def query(_query)
    return [
      FakeCard.new(id: "basep-1", name: "Pikachu"),
      FakeCard.new(id: "mcd19-6", name: "Pikachu"),
    ]
  end
end

class CardSearch
  def self.for(query:)
    with.query(query)
  end

  def self.with(api_key: ENV["POKEMON_API_KEY"], client: Pokemon::Card)
    if api_key
      CardSearch.new(client)
    else
      FakeCardSearch.new
    end
  end 

  attr_reader :client

  def initialize(client)
    @client = client
  end

  def query(query)
    client.where(q: "card.name:#{query}")
  end
end