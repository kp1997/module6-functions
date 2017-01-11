# Exercise 2: writing and executing functions (II)

# Define a function `CompareLength` that takes in 2 character strings, and returns
# the sentence of the form
#   "The difference in length is N"
CompareLength <- function(one, two) {
  one.length <- nchar(one)
  two.length <- nchar(two)
  difference <- one.length - two.length
  print(paste("The difference in length is", difference * -1))
  return(difference)
}

# Pass two strings of different lengths to your `CompareLength` function
CompareLength("Kyle", "Kai")

# Define a function `DescribeDifference` that will return one of the following statements:
# "Your first string is longer by N characters"
# "Your second string is longer by N characters"
DescribeDifference <- function(one, two) {
  difference <- CompareLength(one, two)
  if(difference > 0) {
    print(paste("Your first string is longer by", difference, "characters"))
  } else {
    print(paste("Your second string is longer by", difference * -1, "characters"))
  }
}

# Pass two strings of different lengths to your `DescribeDifference` function
DescribeDifference("Kyle", "Danny")
