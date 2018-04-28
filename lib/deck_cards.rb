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
  end

end
