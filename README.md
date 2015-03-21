### [Hashes Exercise](https://materials.generalassemb.ly/bewd/new-york-city/20/lessons/3#classwork)

First, fork [this](https://github.com/BEWD-NYC-20/teddit_hashes) repository and run:

```bash
cd ~/Sites/
git clone https://github.com/your-username-here/teddit_hashes.git
```

Next, copy the following code into sublime text, and save it as
`~/Sites/teddit_hashes/your_name_here/teddit_hashes.rb`:

```ruby
# Hashes with Teddit

# Using our new knowledge of arrays and hashes, let's make our command line
# Reddit even better.
# Follow the instructions in the comments below:

def get_input
  gets.strip
end

def calculate_upvotes(story)
  upvotes = 1

  upvotes *= 5 if story.downcase.include? 'cat'
  upvotes *= 8 if story.downcase.include? 'bacon'
  upvotes *= 3 if story.downcase.include? 'food'

  upvotes
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

# Create an empty array named `posts` that we will use to store all of the
# stories, their categories and their upvotes in, as hashes.

input = ''
until input == 'exit'
  puts 'Please enter a News story:'


  # Change the below line so that instead of storing the input in a variable
  # called `story`, we instead store it in a hash, where the key is :story.
  # (hint: you will need to define the hash above this line first)
  story = get_input

  # Since we now know the story, let's calculate the upvotes and store the
  # result in the same hash as above, with a key of :upvotes. Please note, you
  # may need to change the `story` variable on the below line to instead access
  # the newly created hash above.
  upvotes = calculate_upvotes(story)

  # Lastly, let's add our new hash to the posts array that you created above
  # this loop.

  # Finally, we'll display the story to the end user before asking them if they
  # would like to add another
  puts "New story added!"

  puts
  puts "Here is a list of all the stories:"
  posts.each_with_index do |post, i|
    puts "#{i+1}: #{post[:story]}, Current Upvotes: #{post[:upvotes]}"
  end
  puts

  puts 'Would you like to add another story? Type exit to leave this program'
  input = gets.strip
  puts
end
```

Follow the instructions in the comments, and when you are finished, save the
file, commit the code to Git and push it to GitHub:

```bash
cd ~/Sites/teddit_hashes/
git add your_name_here/teddit_hashes.rb
git commit -m "Adding hashes exercise"
git push origin master
```
