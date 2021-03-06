dataGaps<-function(years, minmod, maxmod, mindat, maxdat){
     gap_start <- mindat - minmod
     gap_end <- maxmod - maxdat
     actualyears <- (years-1) + minmod
     middleyears <- subset(actualyears,actualyears %in% seq(mindat,maxdat,1))
     middleyears <- sort(unique(middleyears))
     gap_middle <- max(diff(middleyears)-1)
     return(list(gap_start=gap_start,gap_end=gap_end,gap_middle=gap_middle))
   }