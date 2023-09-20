function sequential_dot_product(A, B)
	if length(A) != length(B)
		throw(ArgumentError("The length of the vectors must be equal!"))
	end

	result = 0.0
	for i in 1:length(A)
		result += A[i] * B[i]
	end

	return result
end

vector_A = rand(10^6)
vector_B = rand(10^6)

# execution time:
@time sequential_result = sequential_dot_product(vector_A, vector_B)
