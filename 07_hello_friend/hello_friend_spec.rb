# frozen_string_literal: true

# # Hello, friend!
#
# This lab teaches basic Ruby Object syntax.
#
# ## Watch it fail
#
# Your first real failure should be something like this:
#
#     ./friend_spec.rb:3: uninitialized constant Friend (NameError)
#
# Fix this by opening `friend.rb` and creating an empty class:
#
#     class Friend
#     end
#
# Save it. Run the test again.
#
# ## Watch it fail again
#
# Now you should see an error like this:
#
#     NoMethodError in 'Friend says hello'
#     undefined method `greeting' for #<Friend:0x1180f3c>
#     ./friend_spec.rb:5:
#
# This means that while it found the file, and it found the class, it couldn't find the method named "greeting".
#
# ## Define the "greeting" method
#
# In `friend.rb`, add the following inside the class (before the "end").
#
#     def greeting
#     end
#
# Read some basics about ruby classes at
# https://pine.fm/LearnToProgram/chap_09.html

require 'friend'

describe Friend do
  it 'says hello' do
    expect(described_class.new.greeting).to eq('Hello!')
  end

  it 'says hello to someone' do
    expect(described_class.new.greeting('Bob')).to eq('Hello, Bob!')
  end
end
