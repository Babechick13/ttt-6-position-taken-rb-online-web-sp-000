require_relative '../lib/position_taken.rb'

describe '#position_taken? in lib/position_taken.rb' do
  it 'accepts a board and the position to check as arguments' do
  it 'accepts a board and the index to check as arguments' do
    board = []
    position = 0
    index = 0

    expect{position_taken?(board, position)}.to_not raise_error
    expect{position_taken?(board, index)}.to_not raise_error
  end


  it 'returns false if the board has an empty string " " in the desired position' do
  it 'returns false if the board has an empty string " " in the desired index' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    position = 0
    index = 0

    expect(position_taken?(board, position)).to be(false)
    expect(position_taken?(board, index)).to be(false)
  end

   it 'returns false if the board has an empty string "" in the position' do
   it 'returns false if the board has an empty string "" in the index' do
    board = ["", " ", " ", " ", " ", " ", " ", " ", " "]
    position = 0
    index = 0

    expect(position_taken?(board, position)).to be(false)
    expect(position_taken?(board, index)).to be(false)
  end


  it 'returns false if the board has nil in the position' do
  it 'returns false if the board has nil in the index' do
    board = [nil, " ", " ", " ", " ", " ", " ", " ", " "]
    position = 0
    index = 0

    expect(position_taken?(board, position)).to be(false)    
    expect(position_taken?(board, index)).to be(false)

    position = 1
    expect(position_taken?(board, position)).to be(false)  
    index = 1
    expect(position_taken?(board, index)).to be(false)
  end

  it 'returns true if the board has a value of "X" or "O" in the position' do
  it 'returns true if the board has a value of "X" or "O" in the index' do
    board = ["X", " ", " ", " ", " ", " ", " ", " ", "O"]

    position = 0
    expect(position_taken?(board, position)).to be(true)      
    
    position = 8
    expect(position_taken?(board, position)).to be(true)
    index = 0
    expect(position_taken?(board, index)).to be(true)

    index = 8
    expect(position_taken?(board, index)).to be(true)
  end
end 
end