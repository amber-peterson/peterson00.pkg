#This function will create a bar graph with the package author's (my) own default design. 

#'Produces a bar graph using crabs data set
#'
#'Use data set crabs and any two columns to create a bar graph
#'Returns ggplot with geom_col(), which displays a bar graph
#'
#'@param data crabs dataset
#'@param column_1 x-axis data, independent variable
#'@param column_2 y-axis data, dependent variable
#'@return bar_plot bar graph of two chosen columns (bar_plot)
#'
#'@export

bar_plot<- function(data, column_1, column_2) {
  bar_plot<- ggplot(data=crabs, mapping= aes(x={{column_1}}, y={{column_2}})) + geom_col()
  return(bar_plot)
}
