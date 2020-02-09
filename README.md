---
title: "Calpha Package"
author: "Prepared By: Ozlu Dolma"
output:
  html_document: default
  pdf_document: default
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

### **Installation**

    Install the following R package if not installed:

    devtools::install_github('unimi-dse/91ac33e1')

### **Description**

This package includes functions to compute internal consistency reliability estimates of psychological measurement instruments.

In particular, two estimates can be computed: Cronbach's Alpha (a.k.a. Guttman's Lambda 3) and Guttman's Lambda 6. 

#### **Details**

The package contains functions providing typically reported coefficients of internal consistency reliability of psychological measurement instruments, which can be conventional scales or survey questionnaires used to gauge attitudes, emotions, cognitions, personality characteristics.
In general, responses to items are provided on Likert-type scales.The format of a response scale to a typical item, for instance, can be:

*1 = Strongly disagree*

*2 = Disagree*

*3 = Neither agree nor disagree*

*4 = Agree*

*5 = Strongly agree*

Reliability of such instruments can be measured in various ways. Internal consistency reliability is one of them and describes the extent to which all the items in a scale measure the same concept or construct.

Cronbach's Alpha Coefficient (a.k.a. Coefficient Alpha), developed by Cronbach in 1951, is a measure of internal consistency of a scale. It is expressed as a number between 0 and 1. The acceptable values of alpha is controversial, but in general, values ranging from 0.70 to 0.95 are considered acceptable.It is the most widely reported index of the reliability of a scale in psychological and social science research.

This package can be used to calculate two reliability estimates: Cronbach's Alpha (or Guttman's Lambda 3) and Guttman's Lambda 6 (considers the amount of variance in each item that can be accounted for the linear regression of all of the other items). 

Also, the confidence interval limits for the sample Cronbach's Alpha Coefficient and the raw and standardized item-total score correlations can be computed.The distribution of responses to each scale item can be investigated via item response distribution plots.

### **Usage**

    Load the package:

    require(Calpha)


#### **Functions**

    c_alpha()          Computes Cronbach's Alpha Coefficient

    GL6()              Computes Guttman's Lambda 6

    conf_int()         Computes confidence interval for Cronbach's Alpha Coefficient

    raw_itemtotcor()   Computes raw item-total correlations 
                       (The correlation of each item with the total score, not corrected for item overlap.)

    corr_itemtotcor()  Computes corrected item-total correlations

    ir_dist()          Displays in a histogram response frequencies to selected scale items

#### **Arguments**

    m       A data.frame or matrix of data with labeled columns
    item    Item label or column label of the selected item 
            (For ir_dist function item label should be specified as a second argument, as shown in the examples below)

#### **Examples**

    c_alpha(life_satisfaction)
    conf_int(life_satisfaction)
    ir_dist(life_satisfaction,life_satisfaction$lifesat1)
    
    c_alpha(optimism)
    ir_dist(optimism,optimism$op6)
    corr_itemtotcor(optimism)

##### **Important:**

The functions in this package do not handle missing data (i.e. they do not impute mean or median for missing values in the dataset) and do not treat reverse keyed items (i.e. they do not reverse item responses if needed). These problems should be treated by the user beforehand and the dataset should be proper for the analysis.


### **Dataset**

This package provides a sample dataset containing responses of 436 individuals to a 5-item Life Satisfaction Survey to test the functions of the package. The sample dataset was downloaded from http://spss.allenandunwin.com.s3-website-ap-southeast-2.amazonaws.com/Files/survey.zip.

**In general, another user specified dataset, formed as a dataframe, can be used as an input.**

#### **Data Documentation**

    ?Calpha::life_satisfaction

##### **Example: Life Satisfaction Survey**

    Below are five statements with which you may agree or disagree. Using a 1 to 7 scale, indicate your agreement with each item by placing the appropriate number on the line next to that item.

    strongly disagree 1 2 3 4 5 6 7 strongly agree

    1. ______ In most ways my life is close to ideal

    2. ______ The conditions of my life are excellent

    3. ______ I am satisfied with my life

    4. ______ So far I have got the important things I want in life

    5. ______ If I could live my life again, I would change almost nothing



