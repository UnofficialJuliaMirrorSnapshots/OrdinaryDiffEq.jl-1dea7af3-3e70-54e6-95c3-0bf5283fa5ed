using OrdinaryDiffEq

f = function (du,u,p,t)
  du[1][1] = 0.85u[1][1]
end

u = [[1]]

prob = ODEProblem(f,u,(0.0,1.0))

sol = solve(prob,dt=1/2^4)
