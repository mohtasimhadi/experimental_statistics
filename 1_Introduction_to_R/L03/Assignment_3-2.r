setwd("Module_01_Introduction_to_R/L03")
sink(file = "bottles_of_beer.txt")

for (i in 99:0) {
  if (i > 1) {
    cat(i, "bottles of beer on the wall,", i, "bottles of beer.\n",
        "Take one down, pass it around,", i - 1, if(i > 2) " bottles" else " bottle", " of beer on the wall.\n\n")
  } else if (i == 1) {
    cat("1 bottle of beer on the wall, 1 bottle of beer.\n",
        "Take it down, pass it around, no more bottles of beer on the wall.\n\n")
  } else {
    cat("No more bottles of beer on the wall, no more bottles of beer.\n",
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n\n")
  }
}

sink()
