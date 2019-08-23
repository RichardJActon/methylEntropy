test_that("methylEntropy works", {
	set.seed(42)
	meth <- rbeta(10,1,1)

	#expec

	expect_equal(meth,methylEntropy(meth))
})
