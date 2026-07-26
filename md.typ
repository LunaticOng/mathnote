#set page(
  paper: "a4",
  columns: 2,
  margin: .4cm,
)
#set text(font: "Formera", size: 11pt)
#set heading(numbering: "1.")

/* #place(center)[
  #text(size: 17pt, weight: "bold")[Key Decompositions in Linear Algebra]
  \
  #text(size: 10pt, style: "italic")[A compact reference guide]
] */

#place(
  top + center,
  float: true,
  scope: "parent",
  text(18pt)[Matrix Decompositions],
)

= LU Decomposition
*Form:* $A = L U$
- $A$: Square matrix.
- $L$: Lower triangular matrix (usually with 1s on diagonal).
- $U$: Upper triangular matrix.

*Conditions:* Requires that principal submatrices are non-singular. If pivots are zero, row permutations are needed ($P A = L U$).

*Computation:*
1. Perform *Gaussian Elimination* to reduce $A$ to row echelon form. This form is $U$.
2. Track the multipliers used during row reduction. Place multiplier $l_{i j}$ (used to eliminate row $i$ using row $j$) into the $(i, j)$ position of $L$.

= QR Decomposition
*Form:* $A = Q R$
- $A$: $m times n$ matrix with linearly independent columns.
- $Q$: $m times m$ Orthogonal matrix ($Q^T Q = I$).
- $R$: $m times n$ Upper triangular matrix.

*Computation (Gram-Schmidt):*
1. Let $bold(a)_1, ..., bold(a)_n$ be columns of $A$.
2. Orthogonalize columns to get vectors $bold(u)_i$:
  $ bold(u)_k = bold(a)_k - sum_(j=1)^(k-1) "proj"_(bold(u)_j) bold(a)_k $
3. Normalize $bold(u)_i$ to get orthonormal vectors $bold(e)_i$, forming columns of $Q$.
4. Compute entries of $R$: $R = Q^T A$.

= Cholesky Decomposition
*Form:* $A = L L^T$
- $A$: #text(red)[Symmetric, pos-def matrix.]
- $L$: Lower triangular matrix with positive diagonal entries.

*Computation:*
Solve for entries of $L$ iteratively:
1. Diagonal entries: $l_{k k} = sqrt(a_{k k} - sum_(j=1)^(k-1) l_{k j}^2)$
2. Off-diagonal entries ($i > k$):
  $ l_{i k} = 1/l_{k k} ( a_{i k} - sum_(j=1)^(k-1) l_{i j} l_{k j} ) $

= Eigendecomposition (Spectral Decomposition)
*Form:* $A P = P D$
- $A$: Square $n times n$ matrix #text(red)[(must be diagonalizable)].
- $D$: Diagonal matrix of eigenvalues $lambda_i$.
- $P$: Matrix where columns are eigenvectors $bold(v)_i$.

*Computation:*
1. Find *Characteristic Polynomial*: $det(A - lambda I) = 0$.
2. Solve roots to find eigenvalues $lambda_1, ..., lambda_n$.
3. For each $lambda$, solve $bold(v) in ker(A - lambda I)$ to find eigenvectors.
4. Construct $P = mat(bold(v)_1, ..., bold(v)_n)$ and $D = "diag"(lambda_1, ..., lambda_n)$.

= Singular Value Decomposition (SVD)
*Form:* $A = U Sigma V^T$
- $A$: Any $m times n$ matrix.
- $U$: $m times m$ Orthogonal matrix (Left singular vectors).
- $Sigma$: $m times n$ Diagonal matrix with singular values $sigma_i >= 0$.
- $V$: $n times n$ Orthogonal matrix (Right singular vectors).

*Computation:*
1. Compute symmetric matrix $A^T A$.
2. Find eigenvalues $lambda_i$ and orthonormal eigenvectors $bold(v)_i$ of $A^T A$.
  - $V$ is composed of $bold(v)_i$.
  - Singular values $sigma_i = sqrt(lambda_i)$.
3. Solve for columns of $U$: $A bold(v)_i = sigma_i bold(u)_i$ (for non-zero $sigma$). #text(orange)[Extend to basis if needed.]

= Schur Decomposition
*Form:* $A = Q T Q^*$ (Complex) or $A = Q T Q^T$ (Real)
- $A$: Square matrix.
- $Q$: Unitary (or Orthogonal) matrix.
- $T$: Upper triangular matrix.

*Conditions:* Exists for any square matrix. In the real case, if $A$ has complex eigenvalues, $T$ is quasi-upper triangular (Real Schur Form).

*Computation:*
Computed iteratively (e.g., via the QR Algorithm):
1. Apply a sequence of unitary similarity transformations to $A$.
2. Drive elements below the main diagonal to zero.
3. The diagonal of $T$ will contain the eigenvalues of $A$.

= Jordan Decomposition (Jordan Canonical Form)
*Form:* $A P = P J$
- $A$: Square matrix.
- $J$: Block diagonal matrix consisting of Jordan blocks $J_k(lambda)$.
- $P$: Matrix of generalized eigenvectors.

*Conditions:* Generalization of eigendecomposition. Every square matrix has a unique Jordan form (up to permutation of blocks).

*Computation:*
1. Find eigenvalues $lambda_i$ and their algebraic multiplicities.
2. Determine dimensions of Jordan blocks by examining $ker((A - lambda I)^k)$.
3. Construct chains of *generalized eigenvectors* to form the columns of $P$.
/* 
= Summary Table

#figure(
  table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: horizon,
    [*Name*], [*Formula*], [*Primary Use*],
    [LU], [$A = L U$], [Solving linear systems $A x = b$, inverting matrices],
    [QR], [$A = Q R$], [Least squares, eigenvalue algorithms],
    [Cholesky], [$A = L L^T$], [Efficient solving for symmetric pos-def systems],
    [Eigen], [$A P = P D$], [Powers of matrices, dynamics, stability analysis],
    [SVD], [$A = U Sigma V^T$], [Data compression, noise reduction, pseudoinverse],
    [Schur], [$A = Q T Q^*$], [Numerically stable eigenvalue computations],
    [Jordan], [$A P = P J$], [Theoretical classification, ODE systems (defective)],
  ),
  caption: [Comparison of Decomposition Methods],
)
 */