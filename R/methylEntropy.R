#' methylEntropy
#'
#'Computes shannon entropy for methylation faction values
#'
#' @param MF Methylation faction - a numeric vector
#' @param N Number of defaults to the length of MF
#' @return entropy a numeric vector of length 1
methylEntropy <- function(MF, N = length(MF)) {
	entropy <- (1 / (N * log(1/2))) * sum(
		sapply(MF, function(MFi){
			(MFi * log(MFi)) + ((1 - MFi) * log(1 - MFi))
		})
	)
	return(entropy)
}
