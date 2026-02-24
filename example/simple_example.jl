
using LinearAlgebra, Bessels, FastHankelTransform

function to_profile()
  ws  = collect(range(0, 189, 50_000))
  rs  = collect(range(0, 153, 60_000))
  cs  = collect(range(-563, 829, 60_000))
  tol = 1e-13
  nu  = 3
  nufht(nu, rs, cs, ws; tol=tol)
end

