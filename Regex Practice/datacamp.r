# Familiarize yourself with the vector by printing it
movie_titles

# List all movies that start with "The"
movie_titles[str_detect(
  movie_titles,
  pattern = "^The"
)]

# List all movies that end with "3D"
movie_titles[str_detect(
  movie_titles,
  pattern = "3D$"
)]

# Here's an example pattern that will find the movie Saw 4
str_match(movie_titles, pattern = "Saw 4")

# Match all sequels of the movie "Saw"
str_match(movie_titles, pattern = "Saw .")

# Match the letter K and three arbitrary characters
str_match(movie_titles, pattern = "^K...")

# Detect whether the movie titles end with a full stop
str_detect(movie_titles, pattern = "\\.$")

# List all movies that end with a space and a digit
movie_titles[str_detect(movie_titles,
  pattern = "\\s\\d$"
)]

# List all movies that contain "Grey" or "Gray"
movie_titles[str_detect(movie_titles,
  pattern = "Gr.y"
)]

# List all movies with strange characters (no word or space)
movie_titles[str_detect(movie_titles,
  pattern = "[^\\w\\s]"
)]

# This lists all movies with two or more digits in a row
movie_titles[str_detect(
  movie_titles,
  pattern = "\\d{2,}"
)]

# List just the first words of every movie title
str_match(movie_titles, pattern = "\\w+")

# Match everything that comes before "Knight"
str_match(movie_titles, pattern = ".*\\Knight")  

# Append the three options: Match Nemo, Harmony or Dory
str_view(lines, pattern = "Finding Nemo|Harmony|Dory")

# Wrap the three options in parentheses and compare the results
str_view(lines, pattern = "Finding (Nemo|Harmony|Dory)")

# Use the pattern from above that matched the whole movie names
str_match(lines, pattern = "Finding (Nemo|Harmony|Dory)")
