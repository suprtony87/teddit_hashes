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
# stories and their upvotes in, as hashes.
posts = []


input = ''
until input == 'exit'
  puts 'Please enter a News story:'

post = {}

  # Change the below line so that instead of storing the input in a variable
  # called `story`, we instead store it in a hash, where the key is :story.
  # (hint: you will need to define the hash above this line first)

   post[:story] = get_input

  

  # Since we now know the story, let's calculate the upvotes and store the
  # result in the same hash as above, with a key of :upvotes. Please note, you
  # may need to change the `story` variable on the below line to instead access
  # the newly created hash above.
  post[:upvotes]  = calculate_upvotes(post[:story])


  # Lastly, let's add our new hash to the posts array that you created above
  # this loop.
posts << post
 
  # Finally, we'll display the story to the end user before asking them if they
  # would like to add another
  puts "New story added!"

  puts
  puts "Here is a list of all the stories:"
  1.upto(posts.size) do |n|
    post = posts[n - 1]
    puts "#{n}: #{post[:story]}, Current Upvotes: #{post[:upvotes]}"
  end
  puts

  puts

  puts 'Would you like to add another story? Type exit to leave this program'
  input = gets.strip
  puts
end