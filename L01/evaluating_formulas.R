x <- 871
n <- 1700
pHat <- x / n
p0 <- 0.5
(pHat - p0) / sqrt(p0 * (1 - p0) / n)
