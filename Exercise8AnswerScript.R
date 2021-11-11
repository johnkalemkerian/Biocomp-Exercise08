##Challenge 1


rm(list=ls())

data <- read.table("UWvMSU_1-22-13.txt", header = TRUE)

##Make a matrix to store the information in

table <- matrix(0,nrow=50,ncol=3)
colnames(table) <- c("Time", "UW Score","MSU Score")


##Run a for loop to go through each line of the "table" scores, adding the appropriate
##number of points for UW and MSU each time

for (i in 1:nrow(table)){
  if(data$team[i]=="UW"){
    table[(i+1),2] <- table[i,2] + data[i,3]
    table[(i+1),3] <- table[i,3]
    table[(i+1),1] <- data[i,1]
  }else{
    table[(i+1),3] <- table[i,3] + data[i,3]
    table[(i+1),2] <- table[i,2]
    table[(i+1),1] <- data[i,1]
  }
}

##Plot the scores from UW and MSU
plot(table[,1], table[,2], type="l", col="red")
lines(table[,1], table[,3], col="green")


##Challenge 2

##Generate a random number from 1 to 100
number <- sample(1:100, 1)


##Run a for loop with maximum 10 guesses, with output of "You got it!", "Higher", 
##or "Lower" each time
for (i in 1:10){
  guess <- readline("Guess Number 1 to 100:")
  if (guess==number){
    print("You got it!")
  }else if (guess > number){
    print("Lower")
  }else if (guess < number){
    print("Higher")
  }
}
  



