def shuffle
  game.complete_deck_order
  game.shuffle_deck
end

def deal_cards
  game.complete_deck_order
  game.shuffle_deck
  game.deal_cards_game(4)
end
