RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER before context'
  end

  before(:example) do
    puts 'OUTER before example'
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  context 'of condition A' do
    before(:context) do
      puts 'INNER before context'
    end

    before(:example) do
      puts 'INNER before example'
    end

    it 'is just another random example' do
      expect(3 - 2).to eq(1)
    end

    it 'is just another random example' do
      expect(5 * 2).to eq(10)
    end
  end
end

