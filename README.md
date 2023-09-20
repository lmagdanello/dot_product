# Dot Product of Two Vectors

The dot product, also known as the inner product or dot product, is a mathematical operation that combines two vectors to produce a scalar value (a number). It is a fundamental concept in linear algebra and has various applications in mathematics, physics, engineering, computer science, and many other fields.

## Formula

The dot product of two vectors A and B is calculated using the following formula:

A · B = a₁ * b₁ + a₂ * b₂ + a₃ * b₃ + ... + aₙ * bₙ

Where:
- A = [a₁, a₂, a₃, ..., aₙ] is a vector of dimension n.
- B = [b₁, b₂, b₃, ..., bₙ] is another vector of dimension n.

## Example

For example, let's calculate the dot product of two vectors:
- A = [2, 3, 1]
- B = [4, -1, 5]

The dot product (A · B) is calculated as follows:

A · B = (2 * 4) + (3 * -1) + (1 * 5) = 8 - 3 + 5 = 10

Therefore, the dot product of A and B is equal to 10.

## Applications

The dot product is used in various fields and applications, including:
- Calculating angles between vectors.
- Finding projections of vectors.
- Solving linear equations.
- Computer graphics for lighting calculations.
- Machine learning for feature scaling and similarity measurements.

## Dot Product Calculation in Julia

Create a Julia program that calculates the dot product of two very large vectors (each with at least 10^6 elements). Then, optimize the code to take advantage of parallel processing and evaluate the performance by comparing the sequential and parallel versions of the program.
