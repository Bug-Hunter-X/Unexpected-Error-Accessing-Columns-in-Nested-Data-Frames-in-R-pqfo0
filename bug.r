```r
# This code attempts to create a list of data frames, but due to a subtle error,
# it fails to produce the expected result.

create_list_of_data_frames <- function(num_dfs) {
  result <- vector("list", num_dfs)
  for (i in 1:num_dfs) {
    result[[i]] <- data.frame(a = i, b = i^2)
  }
  return(result)
}

# The issue arises when accessing elements within the nested data frames.
# For instance, attempting to access the 'a' column of the first data frame will produce an error.
my_list <- create_list_of_data_frames(3)
my_list[[1]]$a # Unexpected error
```