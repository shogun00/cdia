# Cdia

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'cdia'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cdia

## Usage

* Define classes and methods in one

* [sample.rb]

```ruby
class Example
  def method1
  end

  def method2(v1, v2, v3)
  end
end
```

* run command `cdia <filename>`, then get class diagram

```bash
$ cdia sample.rb

###### Diagram ######
+------------------------+
| Example
+------------------------+
| method1()
| method2(v1,v2,v3)
+------------------------+

```



## Contributing

1. Fork it ( https://github.com/[my-github-username]/cdia/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
