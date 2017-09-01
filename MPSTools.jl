
module MPSTools

using TensorOperations
using LinearMaps

export MPSTensor, UMPS
export bond_dim, phys_dim, mps_tensor, mps_tensor_shape, rand_UMPS

"""
We use the following convention for numbering legs:
 1--A--3
    |
    2
"""

MPSTensor{T} = Array{T,3}

mutable struct UMPS{T}
    A::MPSTensor{T}
end

bond_dim(A::MPSTensor) = size(A, 1)
phys_dim(A::MPSTensor) = size(A, 2)
mps_tensor_shape(d::Int, D::Int) = (D, d, D)

bond_dim(M::UMPS) = bond_dim(M.A)
phys_dim(M::UMPS) = phys_dim(M.A)
mps_tensor(M::UMPS) = M.A

set_mps_tensor!{T}(M::UMPS{T}, A::MPSTensor{T}) = M.A = A

function rand_UMPS(T, d::Int, D::Int)
    shp = mps_tensor_shape(d, D)
    if T <: Complex
        rT = real(T)
        A = complex.(randn(rT, shp...), randn(rT, shp...)) / √2
    else
        A = randn(T, shp...)
    end
    return UMPS{T}(A)
end


"""
y = tm_l(M::UMPS, x::Matrix)

/------   /------A--
|       = |      |  
\- y* -   \- x* -A*-
"""
function tm_l(M::UMPS, x::Matrix)
    # ???
end


"""
y = tm_r(M::UMPS, x::Matrix)

-- y -\   --A-- x -\
      | =   |      |
------/   --A*-----/
"""
function tm_r(M::UMPS, x::Matrix)
    # ???
end


"""
    tm_eigs{T}(M::UMPS{T}, dirn::Symbol, nev::Int=1)

Return the some of the eigenvalues and vectors of the transfer matrix of M.
dirn should be :L, :R or :BOTH, and determines which eigenvectors to return.
nev is the number of eigenpairs to return.
"""
function tm_eigs{T}(M::UMPS{T}, dirn::Symbol, nev::Int=1)
    # ???
end


"""
    normalize!{T}(M::UMPS{T})

Normalize the M, and return the dominant left and right eigenvectors l and r of
its transfer matrix, normalized so that l'*r = 1.
"""
function normalize!{T}(M::UMPS{T})
    # ???
end

end
