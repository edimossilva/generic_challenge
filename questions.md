# Q1: Mongodb

Produce a data model in mongodb for the following. Use whatever format(s) you're comfortable with (diagram, code, text explanation)

An organization contains many employees, which are broken up into various subteams, which may be broken up further.
An employee can be a member of more than one subteam or organization.
A page with content contains one or more sections, each section can contain one or more fields (number, text, date).
Content may be permissioned against certain subteams or directly against certain employees.

Briefly outline the strengths/weaknesses/capabilities of your approach.


# Q2: OOP

When would you use inheritance and when composition?
Give an example of both.


# Q3: AWS

Not so much a question as a brief overview of what AWS services you've used in the past, how they fitted together, their strengths and weaknesses and which ones you liked/hated the most.


# Q4: Uniq

Without using `uniq`, define a function in ruby that accepts a list and returns only the unique values in that list.


# Q5: Polymorphism

Show how polymorphism works with pseudo code for a number class, a string class, an array class and a hash class.
Can you give me an implementation in javascript and the same for Ruby?


# Q6: Reviewing/refactoring

Comment on the following piece of "library" code with respect to purpose and style. Identify issues and how you would fix them, or any suggested improvements.

```
require 'set'
class PQ
  def initialize
    @x = SortedSet.new
  end
  class El
    attr_reader :p, :x
    def initialize(p,x)
      @p = p
      @x = x
    end
    def <=>(y)
      @p <=> y.p
    end
  end
  def add(item, priority)
    @x.add(El.new(priority,item))
  end
  def deQ
    return unless item = @x.first
    @x.delete(item)
    item.x
  end
end

# Tests
q = PQ.new
q.add(42, 21)
q.add("a", 15)
q.add(:dog, 37)
puts q.deQ # check this is "a"
q.add("a", 42)
puts q.deQ # check this is 42
puts q.deQ # check this is dog
puts q.deQ # check this is a
puts q.deQ # check this is nothing
```

# Q7: Chains

Using either javascript or coffeescript, create a definition for `Chain` such that:

```
foo = Chain("h")
bar = foo("e")("l")("l")("o")

foo.toString()          == "h"
bar.toString()          == "hello"
bar.ancestor.toString() == "hell"
```

# Q8: AngularJS

Navigate to the `Q8/` directory provided with this test. This contains a minimal webapp done in `sinatra` with an angular skeleton already configured. You can start it by running `ruby app.rb` (don't forget to `bundle` first).

The webapp as is will respond with a GET to `/data` with data in the following
format:

    1,One,
    2,Two,1
    3,Three,1
    4,Four,2
    ...

Which represents a tree stored as: ID, Name, ParentID. Modify this
micro-application to display the data as a set of `ul` and `li` on the page -
using the example above, it would be visually represented as:

    - One
      - Two
        - Four
      - Three

You can modify any part of the code as long as `/data` transmits some
non-html representation of the above data and angular transforms it into
the an on-page html structure.

# Q9: Directives

When would you use `compile` and when `link` in AnguarJS directives?
