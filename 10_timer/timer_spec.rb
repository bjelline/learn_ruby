# frozen_string_literal: true

# # Topics
#
# * classes
# * instance variables
# * string formats
# * modular arithmetic
#
# # Timer
#
# Create a timer class that stores seconds
# and is able to returen them formatted as a string as hours:minutes:secods
#
# # Hint
#
# Ruby inherited the `printf` and `sprintf` functions from C, Perl, etc...
# see https://ruby-doc.org/core-2.6.3/Kernel.html#method-i-sprintf

require 'timer'

describe 'Timer' do
  let(:timer) { Timer.new }

  it 'initializes to 0 seconds' do
    expect(timer.seconds).to eq(0)
  end

  describe 'time_string' do
    it 'displays 0 seconds as 00:00:00' do
      timer.seconds = 0
      expect(timer.time_string).to eq('00:00:00')
    end

    it 'displays 12 seconds as 00:00:12' do
      timer.seconds = 12
      expect(timer.time_string).to eq('00:00:12')
    end

    it 'displays 66 seconds as 00:01:06' do
      timer.seconds = 66
      expect(timer.time_string).to eq('00:01:06')
    end

    it 'displays 4000 seconds as 01:06:40' do
      timer.seconds = 4000
      expect(timer.time_string).to eq('01:06:40')
    end
  end

  # One way to implement the Timer is with a helper method.
  # Uncomment these specs if you want to test-drive that
  # method, then call that method from inside of time_string.
  #
  # describe 'padded' do
  #   it 'pads zero' do
  #     timer.padded(0).should == '00'
  #   end
  #   it 'pads one' do
  #     timer.padded(1).should == '01'
  #   end
  #   it "doesn't pad a two-digit number" do
  #     timer.padded(12).should == '12'
  #   end
  # end
end
