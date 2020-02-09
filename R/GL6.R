#'Guttman's Lambda 6
#'
#'Computes Guttman's Lambda 6
#'
#'@param m Dataframe of Likert type responses to the scale items
#'
#'@return Guttman's Lambda 6 between 0 and 1
#'
#'
#' @export
GL6 <- function (m) {
                     {item_mean <-apply(m, MARGIN = 2, FUN = mean)}
                     {value <- (as.integer(ncol(m)/(ncol(m)-1)))*(as.integer((sum(item_mean))-mean(item_mean))/(sum(item_mean)))
                      return (value)}
                    }
