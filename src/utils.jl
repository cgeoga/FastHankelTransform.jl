
# TODO (cg 2026/02/23 18:40): this still allocates 2 bytes each time.
function unsafe_slice(v::Vector{T}, ur::UnitRange{Int64}) where{T}
  isbitstype(T)        || error("This function is only correct for bits-type eltypes.")
  ur[1] >= 1           || error("Please give positive indices in 1-based form.")
  ur[end] <= length(v) || error("Requested indices ($(ur)) extend beyond the length of your input vector ($(length(v))).")
  vp = pointer(v)
  unsafe_wrap(Vector{T}, vp + (ur[1]-1)*sizeof(T), length(ur))
end

