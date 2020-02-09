#' Corrected item-total correlations
#'
#' Computes corrected item-total correlations
#' @param m Dataframe of Likert type responses to the scale items
#'
#' @return corrected item-total correlations between 0 and 1
#'
#'
#' @export
corr_itemtotcor <- function (m) {total <- apply(m,MARGIN = 1, FUN = sum)
                                 i<-as.vector(total)
                                 totalminitem <- ((m)-i)*(-1)
                                 a<-cor(m,totalminitem)
                                 v<-a[,1]
                                 coritc <- v
                                 return (coritc)
                                 }
