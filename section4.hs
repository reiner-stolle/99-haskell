-- Problem 31
-- (**) Determine whether a given integer number is prime.

-- Problem 32
-- (**) Determine the greatest common divisor of two positive integer numbers. 
-- Use Euclid's algorithm.

-- Problem 33
-- (*) Determine whether two positive integer numbers are coprime. 
-- Two numbers are coprime if their greatest common divisor equals 1.

-- Problem 34
-- (**) Calculate Euler's totient function phi(m).

-- Problem 35
-- (**) Determine the prime factors of a given positive integer. 
-- Construct a flat list containing the prime factors in ascending order.

-- Problem 36
-- (**) Determine the prime factors of a given positive integer.
-- Construct a list containing the prime factors and their multiplicity.


-- Problem 37
-- (**) Calculate Euler's totient function phi(m) (improved).
-- See problem 34 for the definition of Euler's totient function. 
-- If the list of the prime factors of a number m is known in the form of problem 36 
-- then the function phi(m) can be efficiently calculated as follows: 
-- Let ((p1 m1) (p2 m2) (p3 m3) ...) be the list of prime factors (and their multiplicities) 
-- of a given number m. Then phi(m) can be calculated with the following formula:

-- Problem 38
-- (*) Compare the two methods of calculating Euler's totient function.
-- Use the solutions of problems 34 and 37 to compare the algorithms. 
-- Take the number of reductions as a measure for efficiency. 
-- Try to calculate phi(10090) as an example.


-- Problem 39
-- (*) A list of prime numbers.

-- Given a range of
-- integers by its lower and upper limit, construct a list of all prime numbers in that range.


-- Problem 40
-- (**) Goldbach's conjecture.
-- Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers. 
-- Example: 28 = 5 + 23. It is one of the most famous facts in number theory that has not been 
-- proved to be correct in the general case. 
-- It has been numerically confirmed up to very large numbers (much larger than we can go with our Prolog system). 
-- Write a predicate to find the two prime numbers that sum up to a given even integer.


