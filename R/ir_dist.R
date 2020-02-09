#'Item Response Distribution Plots
#'
#'Displays item response distribution for the selected item
#'
#'@param m Dataframe of Likert type responses to the scale items
#'@param item Item label or Column label of the selected item
#'
#'@return Item Response Distribution Plot
#'
#'
#'@export
ir_dist <- function (m,item) {
                              ggplot2::ggplot(m,(ggplot2::aes(item))) +
                              ggplot2::geom_histogram(binwidth = 1, fill="grey", colour="black", alpha=.5)+
                              ggplot2::geom_freqpoly(binwidth = 1)+
                              ggplot2::geom_vline(aes(xintercept=mean(item)),
                              color="blue", linetype="dashed", size=1)+
                              ggplot2::labs(title="Item Response Distribution",y="Frequency")
                              }
