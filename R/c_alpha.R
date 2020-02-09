#' Cronbach's Alpha
#'
#' Computes Cronbach's Alpha
#' @param m Dataframe of Likert type responses to the scale items
#'
#' @return Cronbach's alpha coefficient between 0 and 1
#'
#'
#' @export
c_alpha <- function(m) {{
  lower_triangular <- function(x, diag = FALSE)
  {if (diag) {
    x[upper.tri(x, diag = FALSE)] <- 0
  } else {
    x[upper.tri(x, diag = TRUE)] <- 0
  }
    x
  }
  itemvarcov<-cov(m)
  itemvar<- apply(m,MARGIN = 2, FUN = var)
  varcovmatrix<-lower_triangular(itemvarcov)
  meancov<-sum(varcovmatrix)/((ncol(m)*(ncol(m)-1))/2)
  meanitemvar<-mean(itemvar)
  cronbachsalpha <- ((ncol(m))*meancov)/(meanitemvar+(((ncol(m)-1))*meancov))
  return(cronbachsalpha)
}}
