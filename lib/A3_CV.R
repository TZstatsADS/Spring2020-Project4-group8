# Step 2.2 Parameter Tuning (ALS: A3)
# Here we tune parameters, 
# such as the dimension of factor and the penalty parameter lambda by cross-validation

cv.function <- function(dat_train, K, f, lambda){
  ### Input:
  ### - train data frame
  ### - K: a number stands for K-fold CV
  ### - tuning parameters 
  
  n <- dim(dat_train)[1]
  n.fold <- round(n/K, 0)
  
  set.seed(0)
  s <- sample(rep(1:K, c(rep(n.fold, K-1), n-(K-1)*n.fold))) 
  
  train_rmse <- matrix(NA, ncol = 10,nrow = K)
  test_rmse <- matrix(NA, ncol = 10, nrow = K)
  
  for (i in 1:K){
    train.data <- dat_train[s != i,]
    test.data <- dat_train[s == i,]
    
    result <- ALS(f = f, lambda =lambda,
                  max.iter = 10, data = dat_train, 
                  train = train.data, test = test.data)
    
    train_rmse[i,] <-  result$train_RMSE
    test_rmse[i,] <-   result$test_RMSE
    
  }		
  return(list(mean_train_rmse = apply(train_rmse, 2, mean),
              mean_test_rmse = apply(test_rmse, 2, mean),
              sd_train_rmse = apply(train_rmse, 2, sd), 
              sd_test_rmse = apply(test_rmse, 2, sd)))
}
