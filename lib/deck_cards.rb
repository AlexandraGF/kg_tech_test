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

  def shuffle_deck
    shuffle_cards
  end

  def deal_cards_game(number_players)
    number_players.times { deal_cards_player }
  end

private

def deal_cards_player
  player_cards = @shuffled_cards_left.sample(7)
  @shuffled_cards_left -=  player_cards
  @players_cards_total << player_cards
end

def shuffle_cards
  @shuffled_cards << "#{add_names_shuffled(" Spades").slice(0,3).join(", ")},
  #{add_names_shuffled(" Diamonds").slice(3,14).join(", ")},
  #{add_names_shuffled(" Clubs").slice(0,3).join(", ")},
  #{add_names_shuffled(" Hearts").slice(0,3).join(", ")},
  #{add_names_shuffled(" Clubs").slice(3,14).join(", ")},
  #{add_names_shuffled(" Diamonds").slice(0,3).join(", ")},
  #{add_names_shuffled(" Spades").slice(3,14).join(", ")},
  #{add_names_shuffled(" Hearts").slice(3,14).join(", ")}".delete("\n")

  @shuffled_cards = @shuffled_cards[0].split(", ")
  @shuffled_cards_left = @shuffled_cards
end

def add_names_shuffled(suit_name)
  @names_shuffled.map do |name|
    name + suit_name
  end
end

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
