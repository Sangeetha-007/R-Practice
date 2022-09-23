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


