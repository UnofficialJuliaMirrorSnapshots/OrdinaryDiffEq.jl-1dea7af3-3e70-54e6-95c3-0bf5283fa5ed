using OrdinaryDiffEq
using DiffEqProblemLibrary.ODEProblemLibrary: importodeproblems; importodeproblems()
import DiffEqProblemLibrary.ODEProblemLibrary: prob_ode_2Dlinear
prob = deepcopy(prob_ode_2Dlinear)
prob.tspan = (0.0,100.0)
## Solve and plot
sol =solve(prob,DP5();dt=1//2^(22),qmax=1.000005,progress=true,
          maxiters=Int(1e7),progress_steps=Int(1e3),progressbar_name="Test")

sol =solve(prob,DP5();dt=1//2^(22),qmax=1.000005,progress=false,
          maxiters=Int(1e7),progressbar_name="Test")
