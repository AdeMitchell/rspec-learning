# SHOULD NOT BE HERE -> should be in its own rb file, this is for testing only
class Card
  # attr_reader :type
  # def initialize(type)
  #   @type = type
  # end

  # attr_reader only allows items to be read
  # attr_reader :rank, :suit
  # attr_accessor allows items to be written to
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @suit = suit
    @rank = rank
  end

end
# END SHOULD NOT BE HERE


# # RSpec = pull in the rspec config & dependencies
# # Describe = describe what it is I am testing
# # 'Card' = is the class (once defined in the RB file this would be Card)
# RSpec.describe Card do
#   # it = state what it should have/do
#   # i.e 'has a type' - instead of stating it 'has an array'
#   it 'has a type' do
#     # create a new OBJECT of the CARD
#     card = Card.new('Ace of spades')
#
#     # here we:
#     # EXPECT the CARD.TYPE TO EQUAL the ACE OF SPADES
#     expect(card.type).to eq('Ace of spades')
#     # ANOTHER EXAMPLE:
#     # expect(1 + 1).to(eq(2))
#   end
# end

RSpec.describe Card do

  ## sixth written code ##
  # Custom ERROR messages
  let(:card) { Card.new('Ace', 'Spades') }

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a rank' do
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but got #{card.suit} instead!"
  end
  ## end sixth written code ##

  ## fifth written code ##
  # `def card` has taken over from `before` in the previous example
  # because we are using a methog now we have to change `@card` to `card`
  # def card
  #   Card.new('Ace', 'Spades')
  # end

  # Let assigns card as a local variable for the tests, so the elements can be reassigned
  # Let is better than assigning a def method
  # Let does not run until it's required
  # Let! == the item MUST be run before the tests
  # let(:card) { Card.new('Ace', 'Spades') }
  #
  # it 'has a suit' do
  #   expect(card.suit).to eq('Spades')
  # end
  #
  # it 'has a rank' do
  #   card.rank = 'Queen'
  #   expect(card.rank).to eq('Queen')
  # end
  ## end fifth written code ##


  # ## fourth written code ##
  # # `def card` has taken over from `before` in the previous example
  # # because we are using a methog now we have to change `@card` to `card`
  # def card
  #   Card.new('Ace', 'Spades')
  # end
  #
  # it 'has a suit' do
  #   expect(card.suit).to eq('Spades')
  # end
  #
  # it 'has a rank' do
  #   expect(card.rank).to eq('Ace')
  # end
  # ## end fourth written code ##


  ## third written code ##
  # # run the before block before each example (it)
  # # good for when variables need to be used more than once
  # # however we have to change it to an instance variable
  # # fyi: the card.new creates a new card each time instead of using the same 1
  # before do
  # #   puts 'before block code'
  #   @card = Card.new('Ace', 'Spades')
  # end
  #
  # it 'has a suit' do
  #   expect(@card.suit).to eq('Spades')
  # end
  #
  # it 'has a rank' do
  #   expect(@card.rank).to eq('Ace')
  # end
  ## end third written code ##

  ## second written code ##
  #   it 'has a suit' do
  #     card = Card.new('Ace', 'Spades')
  #     expect(card.suit).to eq('Spades')
  #   end
  #
  #   it 'has a rank' do
  #     card = Card.new('Ace', 'Spades')
  #     expect(card.rank).to eq('Ace')
  #   end
  ## end second written code ##

  ## first written code ##
  # it 'has a type' do
  #   card = Card.new('Ace', 'Spades')
  #   # expect(card.type).to eq('Ace of Spades')
  #   expect(card.suit).to eq('Spades')
  #   expect(card.rank).to eq('Ace')
  # end
  ## end first written code ##
end