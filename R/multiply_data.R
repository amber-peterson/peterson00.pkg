#This function will take a numeric column from the data set and multiply all values by 2. Then a new column will be generated

#add if/else statement for nonnumeric columns

multiply2<- function(data, columns) {
   multiply <- ({{columns}}) *2 
   if (sum(is.numeric(data)) == 0){
     return(multiply)
   } else {
     print("Must enter column containing numeric value")
   }
}

#cols<- c("carapace_length", "carapace_width", "rear_width", "Latitude", "frontal_lobe", "body_depth")
