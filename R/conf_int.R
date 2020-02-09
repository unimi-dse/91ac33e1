#'Confidence Interval
#'
#'Computes confidence interval for Cronbach's Alpha Coefficient
#'
#'@param m Dataframe of Likert type responses to the scale items
#'
#'@return Confidence interval for the computed coefficient
#'
#'@export
conf_int <- function (m)
     {cronbachs_alpha <- function(m) {{
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
      cronbachsalpha <- ((ncol(m))*meancov)/(meanitemvar+(((ncol(m)-1))*meancov))}}

    fu<-(qf(.975, df1=(nrow(m)-1), df2=((nrow(m)-1)*(ncol(m)-1)),
            lower.tail = TRUE))
    lcl <-(1-(((1-cronbachs_alpha(m))*fu)))

        fl<-(qf(.975, df1=(nrow(m)-1), df2=((nrow(m)-1)*(ncol(m)-1)),
            lower.tail = FALSE))
    ucl <-(1-(((1-cronbachs_alpha(m))*fl)))
    lcl_ucl <- c(lcl,ucl)
    return(lcl_ucl)
    }

