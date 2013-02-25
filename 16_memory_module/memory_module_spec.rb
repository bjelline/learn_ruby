# # Hello, (with versioning)
#
# This lab teaches Ruby Classes and Modules syntax.
#

require "memory"
require "greeter_with_memory"
require "multiplier_with_memory"

describe Memory do
  it "is a module" do
    Memory.class.should == Module
  end
end

describe Greeter do
  it "says hello" do
    Greeter.new.greeting.should == "Hello World!"
  end

  it "says hello to someone" do
    Greeter.new.greeting("Bob").should == "Hello Bob!"
  end

  it "can remember old greetings" do
    g = Greeter.new
    g.greeting
    g.greeting("Bob")
    g.history.should include "World"
    g.history.should include "Bob"
  end
end

describe Multiplier do
  it "can double a number" do
    doubler = Multiplier.new(2)
    doubler.do(4).should == 8
    doubler.do(7).should == 14
  end

  it "can quadruple a number" do
    q = Multiplier.new(4)
    q.do(4).should == 16
    q.do(7).should == 28
  end

  it "can remember old input" do
    doubler = Multiplier.new(2)
    doubler.do(4).should == 8
    doubler.do(7).should == 14
    doubler.history.should include 4
    doubler.history.should include 7
    doubler.history.should_not include 2
  end
end
