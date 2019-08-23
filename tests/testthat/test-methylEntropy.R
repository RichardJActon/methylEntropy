test_that("methylEntropy works", {
	set.seed(42)
	meth <- rbeta(10,1,1)
	expect_equal(0.747310390131265545044, methylEntropy(meth))
})
