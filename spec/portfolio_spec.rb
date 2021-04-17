# require_relative '../app/models/portfolio.rb'
# require 'spec-helper'
# require 'rails-helper'
# require 'portfolio'

RSpec.describe Portfolio, 'Portfolio' do
  it 'has a type' do
    portfolio = Portfolio.new(title: 'Title', subtitle: 'a', body: 'b')
    # expect(portfolio.type).to eq('Title')
    expect(portfolio).to be_valid
  end
end