require 'five_card_draw'
require 'rspec'

RSpec.describe Card do
  subject(:card) {Card.new(2) }

  describe "#initialize" do
    it "assigns a value to each card" do
      expect(card.value).to eq(2)
    end

    it "returns error if value not in parameters" do
      expect{Card.new(1)}.to raise_error(ValueError)
    end
  end
end

RSpec.describe Spade do 
  subject(:spade) {Spade.new(4)}

  describe "#initialize" do
    it "has the spade suit" do
      expect(spade.suit).to eq(:s)
    end
  end
end

RSpec.describe Club do 
  subject(:club) {Club.new(4)}

  describe "#initialize" do
    it "has the club suit" do
      expect(club.suit).to eq(:c)
    end
  end
end

RSpec.describe Heart do 
  subject(:heart) {Heart.new(4)}

  describe "#initialize" do
    it "has the Heart suit" do
      expect(heart.suit).to eq(:h)
    end
  end
end

RSpec.describe Diamond do 
  subject(:diamond) {Diamond.new(4)}

  describe "#initialize" do
    it "has the Diamond suit" do
      expect(diamond.suit).to eq(:d)
    end
  end
end

RSpec.describe Deck do 
  subject(:deck) {Deck.new}

  describe "#initialize" do
    context 'has 52 cards' do 
      it 'has a length of 52' do 
        expect(deck.stack.length).to eq(52)
      end 
    end 

    context 'makes a shuffled deck' do 
      it 'shuffles the cards' do 
        number, suit = deck.stack[0].value, deck.stack[0].suit
        expect([number, suit]).to_not eq([2, :s])
      end 
    end 

    context 'checks for card instances' do 
      it 'checks a random card' do 
        expect(deck.stack[rand(52)]).to be_a(Card)
      end 
    end 
  end 
end 