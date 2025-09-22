# frozen_string_literal: true

# # Hello, (with versioning)
#
# This lab teaches Ruby Classes and Modules syntax.
#

require 'memory'
require 'greeter_with_memory'
require 'multiplier_with_memory'

describe Memory do
  it 'is a module' do
    expect(described_class.class).to eq(Module)
  end
end

describe Greeter do
  it 'says hello' do
    expect(described_class.new.greeting).to eq('Hello World!')
  end

  it 'says hello to someone' do
    expect(described_class.new.greeting('Bob')).to eq('Hello Bob!')
  end

  it 'can remember old greetings' do
    g = described_class.new
    g.greeting
    g.greeting('Bob')
    expect(g.history).to include 'World'
    expect(g.history).to include 'Bob'
  end
end

describe Multiplier do
  it 'can double a number' do
    doubler = described_class.new(2)
    expect(doubler.do(4)).to eq(8)
    expect(doubler.do(7)).to eq(14)
  end

  it 'can quadruple a number' do
    q = described_class.new(4)
    expect(q.do(4)).to eq(16)
    expect(q.do(7)).to eq(28)
  end

  it 'can remember old input' do
    doubler = described_class.new(2)
    expect(doubler.do(4)).to eq(8)
    expect(doubler.do(7)).to eq(14)
    expect(doubler.history).to include 4
    expect(doubler.history).to include 7
    expect(doubler.history).not_to include 2
  end
end
