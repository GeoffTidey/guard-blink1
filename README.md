
## About

This gem allows you to use your [blink1 from thingm](http://thingm.com/products/blink-1.html) along with [guard](https://github.com/guard/guard) to show if your tests are failing (red) or passing (green)

After reading this [guard-dev post](https://groups.google.com/forum/?fromgroups=#!searchin/guard-dev/notification/guard-dev/wz5zlLJUEQA/gji7B9FS1UAJ) I decided to use the resultant [Guard File notification](https://github.com/guard/guard#file) born out of that very discussion.

## Installation

###  Install guard-blink1

You need [guard](https://github.com/guard/guard) & [guard-shell](https://github.com/hawx/guard-shell)

so if you haven't already, add

```
gem 'guard'
gem 'guard-shell'
```

to your Gemfile

and also add

```gem 'guard-blink1'``` after this

you'll probably want to put them in your test group

```
group :test do
  gem 'guard'
  gem 'guard-shell'
  gem 'guard-blink1'
end
```

### Now add this to the end of your Guardfile

```
notification(:file, path: '.guard_result')

require 'guard_blink1'
guard :shell do
  watch '.guard_result' do
    firstline =  File.read('.guard_result').lines.first.strip
    GuardBlink1.blink_colour(firstline)
  end
end
```

### .gitignore

As we're using an intermediary file called .guard_result you'll probably want to add that to your .gitignore file, so you won't commit it to git.

### Winning

Now get back to coding with your blink1 as your Red/Green testing buddy :)

## Contributing/Making it better/Fixing my bugs ;)


1. Create your feature branch (`git checkout -b my-new-feature`)
2. Make changes whilst running guard (of course), & make sure all tests are green.
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
