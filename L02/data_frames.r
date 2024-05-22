us.colleges <- read.csv("L02/college.csv")
us.colleges
str(us.colleges)

us.colleges[3, 4]	        # 3rd row and 4th column
us.colleges[3, "Accept"]	# 3rd row and column labelled Accept
us.colleges[3, c(1, 3)]	    # 3rd row and columns 1 and 3
us.colleges[3, ]	        # 3rd row and all columns
us.colleges[3, -4]	        # 3rd row and all columns except the 4th column
us.colleges[3, -c(1, 4)]	# 3rd row and all columns except the 1st
                            # and the 4th column # nolint

us.colleges2 <- us.colleges[,c(1:4, 19)]
names(us.colleges2)
us.colleges2$acception.rate <- us.colleges2$accepted/us.colleges2$applied

write.csv(us.colleges2, file="L02/Colleges2.csv")

getwd()

ind.private <- us.colleges2$private == "Yes"
mean(us.colleges2$acception.rate[ind.private])
ind.public <- us.colleges2$private == "No"
mean(us.colleges2$acception.rate[ind.public])

by(us.colleges2$acception.rate, us.colleges2$private, mean)

with(us.colleges2, by(acception.rate, private, mean))