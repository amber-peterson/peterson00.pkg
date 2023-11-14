#This function will create a summary table of a linear model using the data frame, dependent variable, and independent variables

#'Produces summary table of a linear model
#'
#'Use data set "crabs" and any numeric columns to build linear model
#'Returns linear model summary
#'
#'@param df crabs dataset
#'@param dependent numeric column used as dependent variable
#'@param independent_cols one or more columns used as independent variables
#'@param return linear model summary table
#'
#'@export

linear_model<- function(df, dependent, independent_cols) {
    return_summary <- df %>% 
    select(a = quo_name(dependent), starts_with(independent_cols)) %>% 
    lm(a ~ ., data= .) %>% 
    summary()
  return(return_summary) 
  }
 

#linear_model(crabs, "carapace_width", "body_width")
