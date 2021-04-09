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
    with(ENV["POKEMON_API_KEY"]).query(query)
  end

  def self.with(api_key)
    if api_key

    else
      FakeCardSearch.new
    end
  end 
end