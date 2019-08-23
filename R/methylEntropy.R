#' methylEntropy
#'
methylEntropy <- function(MF, N = length(MF)) {
	entropy <- (1 / (N * log(1/2))) * sum(
		sapply(MF, function(MFi){
			(MFi * log(MFi)) + ((1 - MFi) * log(1 - MFi))
		})
	)
	return(entropy)
}
