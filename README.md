# Learn Ruby

This is a fork of http://testfirst.org/


## Setup on your local machine

Make sure to use a current version of ruby, at least ruby 3.4.

1. download this repos as a zip file

2. unpack the zip file

3. inside the folder run

    bundle install


Video: [Setup for Windows and WSL](https://youtu.be/sxymHHjoj_Y) - german only



## Exercise

The goal of this exercise is to learn about the main features of
Ruby. There are tests given, you fulfill the tests by writing
very short programs.


Recommended: do all the exercises, including extra credit. But beware: the
problems get exponentially harder!


Recommended: switch off all AI coding assistents.  this is about
exercising your own brain!


### How to run and fulfill the tests

Each folder contains a lesson about some aspect of ruby.
So for each folder do the following:

- on the command line: change into the subfolder, there you will find a \*\_spec.rb file
  containing the test. sometimes there are hints in this file.
- run `bundle exec rake` → you will get an error
  saying that a file (for example `hello.rb`) is missing
- create the missing file, run `rake` again → you will get an
  error saying that a specific function (for example `hello`) does not return an expected value
- in file hello.rb write an implementation for the function, run `rake` again - maybe the test is now green. maybe not. improve your implementation until the test is green.
- now and again run `rubocop` to see recommendations on coding conventions, or `rubocop -a` to automatically apply them to your code
- once you are satisfied with your solution: commit to branch a1
- in file NOTES.md write up what you learned about ruby. compare ruby to other languages you know, put references to documentation or stack overflow articles here. If you keep your own programming lab book in another format than markdown, feel free to use that format.

repeat for the other tests and other folders.

when you are finished you should have a lot of running tests,
a basic understanding and a lot of notes on Ruby.

