# nested describe blocks

RSpec.describe '#even? method' do
# it should return true if number is even
# it should return false if number is odd
# INSTEAD OF USING THE ABOVE, USE NESTED DESCRIBE BLOCK
# Context & Describe are the same thing

  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
