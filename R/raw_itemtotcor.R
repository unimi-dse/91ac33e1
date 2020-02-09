#' Raw item-total correlations
#'
#' Computes raw item-total correlations
#' @param m Dataframe of Likert type responses to the scale items
#'
#' @return Raw item-total correlations between 0 and 1
#'
#'
#' @export
raw_itemtotcor <- function (m) {total <- apply(m,MARGIN = 1, FUN = sum)
                                i<-as.vector(total)
                                b<-cor(m,total)
                                y<-b[,1]
                                ritc<-y
                                return (ritc)
                                }
