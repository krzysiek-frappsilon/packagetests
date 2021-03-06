#' Sum numeric columns of input data
#' @param data dataset on which to perform operation
#' @export
sum_columns <- function(data) {
  dplyr::summarise_if(data, is.numeric, sum)
}

#' Display levels for factors, unique, for characters
#' and range for numeric values
#'@param data input dataset
#'@export
#'@rdname sum_columns
return_class_specific_attr <- function(data) {
  purrr::map_if(data, is.numeric, range) %>%
    purrr::map_if(is.character, unique) %>%
    purrr::map_if(is.factor, levels)
}

#'Return columns of dataset
#'@param data input dataset
#'@export
get_column_names <- function(data) {
  colnames(data)
}
