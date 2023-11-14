#This function will remove NAs or other missing data points from our data set. 

#'Removes NA values from crabs data set
#'
#'Use the data set "crabs" and any columns to remove NAs from
#'Returns data set with all NA values omitted
#'
#'@param data crabs dataset
#'@param columns columns from data set
#'@return clean dataset cleaned of NAs
#'
#'
#'@export 


remove_nas<- function(data, columns){
  clean <- data %>%
    na.omit(data) %>%
    select(all_of({{columns}})) 
  if (sum(is.na(data)) == 0){
    return(clean)
  } else {
    print("NAs still present.")
    }
}

#cols<- c("carapace_length", "carapace_width", "rear_width", "color", "sex", "Latitude", "frontal_lobe", "body_depth")

