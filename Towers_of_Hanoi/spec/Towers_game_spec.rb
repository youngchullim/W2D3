require 'rspec'
require 'Towers_game'

  RSpec.describe Tower do 
    subject(:game) {Tower.new}

    describe "#initialize" do 
      it "creates an initial stack of disks" do 
        expect(game.stack).to eq([[3,2,1], [],[]])
      end 
    end 

    describe "#move" do 
      context "moves disk from tower1 to tower2" do 
        it "moves the towers" do 
          expect(game.move(0, 1)).to eq([[3,2], [1], []])
        end 
      end 
    end 

    describe "#valid_move?" do 
      context "bigger disk to smaller disk" do 
        before do
          game.move(0,1)
        end
        it "makes sure bigger disk can't go on top smaller disk" do
          expect(game.valid_move?(0,1)).to be false
        end
      end 

      context "doesn't move empty tower" do
        it "returns false" do
          expect(game.valid_move?(2,1)).to be false
        end
      end

      context "checks valid move" do 
        it "returns true" do
          expect(game.valid_move?(0,1)).to be true
        end
      end
    end 

  end 