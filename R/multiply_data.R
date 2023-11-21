#This function will take a numeric column from the data set and multiply all values by 2. Then a new column will be generated in addition to the original data set.

#'Manipulates selected column and produces an additional column multiplied by 2
#'Returns data set with new multiplied column
#'
#'@param data the crabs data set
#'@param column numeric column from data set
#'@param new_column name of the new multiplied column 
#'@param return new column in addition to original data set
#'
#'@export 

multiply_2<- function(data, column, new_column){
  new<- data %>% 
    mutate(new={{column}}*2) %>% 
    rename({{new_column}} := new)
  return(new)
}
  
