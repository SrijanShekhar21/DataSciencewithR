tennis <- function(prob){
    sA = 0
    sB = 0
    m = 0
    while(sA < 3 && sB < 3){
        m = m + 1
        if (rbinom(1, 1, prob)){
            # 1 indicates a win by player A
            sA = sA + 1
        }
        else {
            sB = sB + 1
        }
    }
    return(m)
}

constProb = 0.70
m <- rep(1, times = 1000)
for(i in 1: 1000){
    m[i] <- tennis(constProb)
} 
ansc <- mean(m)
