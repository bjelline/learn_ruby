# frozen_string_literal: true

# # Topics
#
# * Hash - see
# * Array
# * instance variables
# * regular expressions
#
# # Hints
#
# - learn what a Hash can do at https://ruby-doc.org/core/Hash.html
# - if you run into troubles with quotes, try %() instead of "", see
#   https://ruby-doc.org/core-2.6.3/doc/syntax/literals_rdoc.html#label-Percent+Strings

require 'dictionary'

describe Dictionary do
  let(:dict) { described_class.new }

  it 'is empty when created' do
    expect(dict.entries).to eq({})
  end

  it 'can add whole entries with keyword and definition' do
    dict.add('fish' => 'aquatic animal')
    expect(dict.entries).to eq('fish' => 'aquatic animal')
    expect(dict.keywords).to eq(['fish'])
  end

  it 'add keywords (without definition)' do
    dict.add('fish')
    expect(dict.entries).to eq('fish' => nil)
    expect(dict.keywords).to eq(['fish'])
  end

  it 'can check whether a given keyword exists' do
    expect(dict).not_to include('fish')
  end

  it "doesn't cheat when checking whether a given keyword exists" do
    expect(dict).not_to include('fish') # if the method is empty, this test passes with nil returned
    dict.add('fish')
    expect(dict).to include('fish') # confirms that it actually checks
    expect(dict).not_to include('bird') # confirms not always returning true after add
  end

  it "doesn't include a prefix that wasn't added as a word in and of itself" do
    dict.add('fish')
    expect(dict).not_to include('fi')
  end

  it "doesn't find a word in empty dictionary" do
    expect(dict.find('fi')).to be_empty # {}
  end

  it 'finds nothing if the prefix matches nothing' do
    dict.add('fiend')
    dict.add('great')
    expect(dict.find('nothing')).to be_empty
  end

  it 'finds an entry' do
    dict.add('fish' => 'aquatic animal')
    expect(dict.find('fish')).to eq('fish' => 'aquatic animal')
  end

  it 'finds multiple matches from a prefix and returns the entire entry (keyword + definition)' do
    dict.add('fish' => 'aquatic animal')
    dict.add('fiend' => 'wicked person')
    dict.add('great' => 'remarkable')
    expect(dict.find('fi')).to eq('fish' => 'aquatic animal', 'fiend' => 'wicked person')
  end

  it 'lists keywords alphabetically' do
    dict.add('zebra' => 'African land animal with stripes')
    dict.add('fish' => 'aquatic animal')
    dict.add('apple' => 'fruit')
    expect(dict.keywords).to eq(%w[apple fish zebra])
  end

  it 'can produce printable output like so: [keyword] "definition"' do
    dict.add('zebra' => 'African land animal with stripes')
    dict.add('fish' => 'aquatic animal')
    dict.add('apple' => 'fruit')
    expect(dict.printable).to eq(%([apple] "fruit"\n[fish] "aquatic animal"\n[zebra] "African land animal with stripes"))
  end
end
