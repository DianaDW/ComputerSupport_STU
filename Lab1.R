# Character type
char_var <- "Hello, Ukraine!"

# Numeric type (floating-point)
num_var <- 07.10

# Integer type
int_var <- 20L  # The 'L' suffix forces the value to be an integer

# Complex type
complex_var <- 3 + 2i  # 'i' represents the imaginary part

# Logical type (boolean)
logical_var <- TRUE

# Print variables to the console
print(char_var)
print(num_var)
print(int_var)
print(complex_var)
print(logical_var)

# Sequence from 5 to 75
sequence_vector <- 5:75

# Vector with numbers 3.14, 2.71, 0, and 13
number_vector <- c(3.14, 2.71, 0, 13)

# Vector with 100 TRUE values
true_vector <- rep(TRUE, 100)

# Print vectors
print(sequence_vector)
print(number_vector)
print(true_vector)

# Create the matrix with the given values
matrix_data <- matrix(c(12, 34, 87, -12, -12.1, 0, 3.6, 0.5, 1.3), nrow = 3, byrow = TRUE)

# Print the matrix
print(matrix_data)

# Create a list with all atomic types
atomic_list <- list(
  char_var = "Hello, Ukraine!",  # Character type
  num_var = 07.10,               # Numeric type (floating-point)
  int_var = 20L,                 # Integer type
  complex_var = 3 + 2i,          # Complex type
  logical_var = TRUE             # Logical type
)

# Print the list
print(atomic_list)

# Create a factor with 3 levels: infant, child, adult
age_group <- factor(c("infant", "child", "adult", "child", "adult", "infant"),
                    levels = c("infant", "child", "adult"))

# Print the factor
print(age_group)

# Print the levels of the factor
print(levels(age_group))

# Create a data frame with 3 columns: Name, Age, and Gender
data_frame_example <- data.frame(
  N = c("Diana", "Kate", "Max", "Richard"),   # Character column
  A = c(20, 19, 28, 32),                   # Numeric column
  G = c("Female", "Female", "Male", "Male")  # Character column
)

# Print the data frame
print(data_frame_example)

# Change column names of the data frame
colnames(data_frame_example) <- c("Name", "Age", "Gender")

# Print the data frame with new column names
print(data_frame_example)

# Create a random vector of 50 items from a normal distribution
set.seed(123)  # Set seed for reproducibility
v <- rnorm(50)

# Print the 10th item
tenth_item <- v[10]
cat("10th item:", tenth_item, "\n")

# Print items from 10th to 20th (including 20th item)
items_10_to_20 <- v[10:20]
cat("Items from 10th to 20th:", items_10_to_20, "\n")

# Print 10 items starting from the 5th
items_5_to_14 <- v[5:(5+9)]
cat("10 items starting from 5th:", items_5_to_14, "\n")

# Print all items bigger than 0
items_bigger_than_0 <- v[v > 0]
cat("All items bigger than 0:", items_bigger_than_0, "\n")

# Print the last 5 items
last_5_items <- tail(v, 5)
cat("Last 5 items:", last_5_items, "\n")

# Create the data frame
set.seed(123)  # Set seed for reproducibility
df <- data.frame(
  a = rnorm(50),                        # Column a with random normal values
  b = 1:50,                             # Column b with sequential numbers from 1 to 50
  cc = sample(letters, 50, replace = TRUE)  # Column cc with random letters
)

# Print the last 10 rows
cat("Last 10 rows:\n")
print(tail(df, 10))

# Print the 15th item of column cc
fifteenth_item_cc <- df$cc[15]
cat("15th item of column cc:", fifteenth_item_cc, "\n")

# Print subset of columns a and b and rows from 10th to 20th (including 20th)
cat("Subset of columns a and b (rows 10 to 20):\n")
subset_ab <- df[10:20, c("a", "b")]
print(subset_ab)

# Create a new vector from column b
new_vector_b <- df$b
cat("New vector from column b:\n")
print(new_vector_b)

# Create a random vector with 30 items from a normal distribution
set.seed(123)  # Set seed for reproducibility
v_na <- rnorm(30)

# Randomly select a number of NA values to insert
num_na <- sample(10, 1)
v_na[sample(30, num_na)] <- NA  # Insert NA values into the vector

# Print all non-NA items
cat("All non-NA items:\n")
print(v_na[!is.na(v_na)])

# Find how many NA values the vector has
na_count <- sum(is.na(v_na))
cat("Number of NA values:", na_count, "\n")

# Find min, max, and mean for the vector (excluding NA values)
min_value <- min(v_na, na.rm = TRUE)
max_value <- max(v_na, na.rm = TRUE)
mean_value <- mean(v_na, na.rm = TRUE)

cat("Minimum value (excluding NA):", min_value, "\n")
cat("Maximum value (excluding NA):", max_value, "\n")
cat("Mean value (excluding NA):", mean_value, "\n")
