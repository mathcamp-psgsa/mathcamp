
# In the morning session with Ekrem, you will have learned all about the wild 
# world of probability. In the afternoon session with me (Miles) we'll focus on
# using our knowledge of probability to generate data in R. In so doing, we'll 
# learn about how we can automate iterative tasks in R using functions in the 
# 'foreach' library. You can find a vignette at the following site, which offers 
# some useful information about what you can do with the 'foreach' package:
# https://cran.r-project.org/web/packages/foreach/vignettes/foreach.pdf

# I'll also be using the 'ggplot2' library for data visualizations and functions in 
# the 'dplyr' library to organize data. You don't necessarily have to read up on
# these libraries before hand, but a simple Google search will yield some useful
# information, which it won't hurt to familiarize yourself with.

# I've also included some code that you can play with, below, so that you can 
# have a handle of some of what we'll be doing in the session. I have included
# code for a coin toss function, which you can use to flip a virtual "coin"
# repeatedly in R. Feel free to manipulate the function and play with values
# however you wish. (And breathe easy, there's no pop quiz to determine if you've 
# played with the code).

# I'll see you Wednesday afternoon!

## Coin Toss Function
coin_toss <- function(times=100,run=1,bias=.5){
  require(foreach)
  outcomes <- times(times) %do% {
    paste(sample(c(rep("H",len=100*bias),
                   rep("T",len=100*(1-bias))),
                 size=run,replace=T),collapse="")
  }
  return(outcomes)
}

# Flip the coin once.
coin_toss(times=1)

# Flip it again.
coin_toss(times=1)

# Does the coin equal heads?
coin_toss(times=1)=="H"

# What is the proportion of times you get heads after 20 tosses?
mean(coin_toss(times=20)=="H")

# How does the proportion of times you get heads vary as you toss the
# coin more and more times?
  # I'll let you answer this one....
  # Code Here

# What does the 'run' command in the coin_toss() function do?
  # Code Here

# What does the 'bias' command in the coin_toss() function do?
  # Code Here