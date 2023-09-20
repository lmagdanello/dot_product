using Base.Threads

function parallel_dot_product(A, B)
	if length(A) != length(B)
		throw(ArgumentError("The length of the vectors must be equal!"))
	end

	num_threads = nthreads()

	chunk_size = div(length(A), num_threads)

	parallel_result = Vector{Float64}(undef, num_threads)

	@threads for i in 1:num_threads
		start_idx = (i - 1) * chunk_size + 1
		end_idx = i == num_threads ? length(A) : i * chunk_size

		local thread_result = 0.0
		for j in start_idx:end_idx
			thread_result += A[j] * B[j]
		end

		parallel_result[i] = thread_result

	end

	final_result = sum(parallel_result)

	return final_result
end

vector_A = rand(10^6)
vector_B = rand(10^6)

@time parallel_result = parallel_dot_product(vector_A, vector_B)

