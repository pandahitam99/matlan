#TUGAS MATLAN (POWER METHOD)
#IVANDA WAHID ANNAFI (17523183
#NOMOR 1

A <- cbind(c(4, -5), c(2, 3))
powerMethod(A, maxiter = 5)
eigen(A)$values[1] # check
eigen(A)$vectors[,1]

#NOMOR 2

B <- cbind(c(0, 11, -5), c(-2,17,-7), c(-4,26,-10))
powerMethod(A, eps = -3, maxiter = 5)
eigen(B)$values[1] # check
eigen(B)$vectors[,1]



