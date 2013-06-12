Todo and Diary (tandd)
========================

## Description
At every day end, I should be able to write a diary with things I did, people I talked. At every day start, I should plan for the things that should be done on the same days

### Using the app.
- clone the repo.
- bundle install
- rake db:migrate
- rails s

### Live App
[Todo and diary](http://tandd.herokuapp.com)

### P.S
- I should have done BDD, but I made this app in very short time using rails composer. Din think about models etc, so the logic might not be good. So, need to work on the logic when I get time. 

```ruby
#!/usr/bin/env ruby

#days.rb
birth = Time.new(1991, 2, 7).to_i
now = Time.now.to_i
sec = now - birth
days = sec/(60*60*24)
puts "----------------------------------------------------------------------------"
puts "--------------You have lived #{days} days dude!-----------------------------"
left = 30000 - days
puts "----------------------------------------------------------------------------"
puts "-----------YOU ONLY HAVE #{left} DAYS LEFT!, COME ON ENJOY :D---------------" 
puts "----------------------------------------------------------------------------"
```

This was the first ruby code I wrote which I have in my .zshrc, showing up everytime I open up shell. And why did have this? because [Drew Houston said this](http://web.mit.edu/newsoffice/2013/commencement-address-houston-0607.html)

Then I started to make another ruby program in which I would have questions asked each time before I sleep.

```ruby
#!/usr/bin/env ruby

puts "----------------------What are things you have done today? press n if needed---------------------------"
puts "-------To whom di you chat"
puts "----Whom di you visit?"
puts "---What quote did you learn---?"
puts "What's next tomorrow?----"

puts ""
done = []
thing = gets.chomp
loop do
  done << thing
  thing = gets.chomp
  break if thing == 'n'
end
File.open('done_thing', 'a') do |f|
  time = Time.now
  f.puts time.strftime("%A %B %d %Y %H:%M:%S")
  done.each do |line|
    f.puts line
  end
end
```

While I was writing the program, I hit a constraint, what if I wanted to see my diary for a specific day? How do I query the file? Then I saw the need for database. I looked for ruby orms, decided to go with sqlite. But finally thought I would do it Rails as I am very comfortable. But I had someother project on the otherside,  I had to complete it soon. Only when I am under pressure I tend to concentrate on everything else. Even now when I type, my friend is asking to complete few modules. I tend to get imaginative, innovative during these times, I can't help it :D 
I told I had no time, so I wanted the app to be made in no time. I decided to go with [rails composer](https://github.com/RailsApps/rails-composer). I din do any testing(I am sorry, I hate it :/)

If you have time, fork it, test, clean it, add stuffs to it :D


### License
<a rel="license" href="http://creativecommons.org/licenses/by/2.5/in/deed.en_US"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/2.5/in/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/2.5/in/deed.en_US">Creative Commons Attribution 2.5 India License</a>.
