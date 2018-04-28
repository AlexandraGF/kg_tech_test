require './lib/deck_cards.rb'
require './spec/spec_helpers.rb'

describe Game do
  subject(:game) {described_class.new}
  it 'Game should be initialised with empty suit_cards array' do
    expect(game.suit_cards).to eq([])
  end

  it 'respond to method complete_deck_order' do
    expect(game).to respond_to(:complete_deck_order)
  end

  it 'suit_cards should have all cards' do
    expect((game.complete_deck_order).size).to eq(52)
  end

  it 'deck cards should be in the correct order (first 5 cards)' do
    game.complete_deck_order
    expect(game.suit_cards[0].split(',')).to include("Ace Heart", "Two Heart", "Three Heart", "Four Heart", "Five Heart")
  end

  it 'respond to method complete_deck_order' do
    expect(game).to respond_to(:shuffle_deck)
  end

  it 'deck cards should not be in the correct order (first 5 cards) when shuffled' do
    shuffle
    expect(game.suit_cards[0].split(',').slice(0,5)).to eq(["Ace Heart", "Two Heart", "Three Heart", "Four Heart", "Five Heart"])
  end

  it 'respond to method deal_cards_game with 1 argument' do
    expect(game).to respond_to(:deal_cards_game).with(1).argument
  end

  it 'after deal the cards to the players, shuffled cards left should be fewer' do
    deal_cards
    expect((game.shuffled_cards_left).size).to eq(24)
  end

  it 'after deal the cards to the players, the player should have 7 cards' do
    deal_cards
    expect(game.players_cards_total[0].size).to eq(7)
  end

  it 'after deal the cards to the players, the player should have the exact 7 cards given' do
    deal_cards
    game_cards = game.players_cards_total[0]
    expect(game_cards).to eq(game.players_cards_total[0])
  end

end
