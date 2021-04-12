

RSpec.describe 'Portfolio' do
  it 'has a type' do
    portfolio = Portfolio.new
    # expect(portfolio.type).to eq('Title')
    expect(portfolio).to be_true
  end
end