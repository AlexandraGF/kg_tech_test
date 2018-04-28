require './lib/deck_cards.rb'

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

end
