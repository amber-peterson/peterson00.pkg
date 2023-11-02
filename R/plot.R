#'Produce scatter plot for any two columns of crabs data
#'
#'Use the data set "crabs" and any two columns in order to produce a scatter plot. 
#'Returns a ggplot with a geom point, which displays as a graph with scattered data points.
#'
#'@param data crabs dataset
#'@param column_1 x-axis data, independent variable
#'@param column_2 y-axis data, dependent variable
#'@return scatter_plot scatter plot of two chosen columns (plot)
#'
#'
#'@export 

plot<- function(data, column_1, column_2) {
  scatter_plot<- ggplot(data=crabs, mapping= aes(x={{column_1}}, y={{column_2}})) + geom_point()
  return(scatter_plot)
}