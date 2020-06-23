\name{SeerMapper2010West-package}
\alias{SeerMapper2010West-package}
\docType{package}
\title{\var{SeerMapper}-Supplemental 2010 Census Tract Western States Boundary Datasets}
\description{
 The \var{SeerMapper2010West} package provides supplemental 2010 Census Tract boundary 
 datasets for 13 states without Seer Registries that are west of the Mississippi river
 use with \var{SeerMapper} package.
 
 The \var{SeerMapper2010Regs} supplemental data package contains the 2010 census tract
 boundary datasets for 19 states with NCI Seer Registries.  
 The \var{SeerMapper2010East} supplemental data package contains the 2010 census tract
 boundary datasets for 20 states (including DC and PR) that do not have NCI Seer Registries and are 
 east of the Mississippi river.
 
 By loading these packages (via the library function) expands the \var{SeerMapper}
 package abilities to map census tract level data in any of the 50 states, 
 the District of Columbia and Puerto Rico.
}
\details{
    \tabular{ll}{
      Package:  \tab SeerMapper2010West\cr
      Type:     \tab Package\cr
      Version:  \tab 1.2.4\cr
      Date:     \tab 2020-06-22\cr
      License:  \tab GPL-2\cr
      LazyLoad: \tab no\cr
    } 

No special action is required by the user to install this package or 
load it when running \var{SeerMapper}.  The defined interdependencies 
of the packages automatically install the supplemental census tract 
boundary packages when \var{SeerMapper} is install.
When \var{SeerMapper} is called, if it determines which, if any, 
supplemental packages need to be loaded, it initiates the loading for 
the caller.
\preformatted{  
  library(SeerMapper)

  rateDate <- data.frame(FIBS=stateFibs, 
                         Rate=stateRateVector, 
                         pValue=stateRatePValue)
  
  SeerMapper(rateData, Title=c("Test Map"))
 }

If the package attachment or dataset load fails, the caller is 
notified of the problem and mapping is terminated.  

The \var{SeerMapper2010West} package contains the 2010 census tract 
boundary datasets for:
\preformatted{
    FIPS   Name
     05     Arkansas
     08     Colorado
     20     Kansas
     27     Minnesota
     29     Missouri
     30     Montana
     31     Nebraska
     32     Neveda
     38     North Dakota
     41     Oregon
     46     South Dakota
     48     Texas
     56     Wyoming
  }
}  
\author{
Jim Pearson \email{jbpearson353@gmail.com}\cr 
Maintainer: "Joe Zou" \email{zouj@imsweb.com}
}

