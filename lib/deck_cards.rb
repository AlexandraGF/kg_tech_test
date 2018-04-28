class Game

  attr_reader :suit_cards, :shuffled_cards, :shuffled_cards_left, :players_cards_total

  def initialize
    @names = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]
    @names_shuffled =   ["Queen", "Four", "Ten", "King", "Jack", "Six", "Two", "Eight", "Three", "Ace", "Nine", "Five", "Seven"]
    @suit_cards = []
    @shuffled_cards = []
    @shuffled_cards_left = []
    @players_cards_total = []
  end

  def complete_deck_order
    deck_order
  end

private


def add_names(suit_name)
  @names.map do |name|
    name + suit_name
  end
end

def deck_order
  @suit_cards << "#{add_names(" Heart").join(",")},#{add_names(" Clubs").join(",")},
  #{add_names(" Spades").join(",")},#{add_names(" Diamonds").join(",")}"

  @suit_cards[0].split(",")
end

end
