using Pkg, CPLEX

Pkg.develop(path="C:\\Users\\wilhe\\Dropbox\\My PC (DESKTOP-P6322LG)\\Desktop\\New Job Shop\\Uploaded Jobshop\\Jobshop.jl")

using JobShop

jsprob = load_from_csv(@__DIR__)
jsprob.parameter.start_upper_bound = 8000.0
jsprob.parameter.ShiftLength = 18
jsprob.parameter.prob = 0.05
jsprob.parameter.prob_r = 0.2
jsprob.T = 1:75
jsprob.parameter.start_norm = 100.0
jsprob.parameter.start_step = 0.006
jsprob.parameter.optimizer = CPLEX.Optimizer
jsprob.parameter.penalty = 60.0
jsprob.parameter.alpha_step_1 = 0.5/20
jsprob.parameter.alpha_step_2 = 0.5
jsprob.parameter.feasible_interval = 21
jsprob.parameter.feasible_norm_limit = 2.0
jsprob.parameter.stepsize_interval = 40
jsprob.parameter.stepsize_start = 37.5

sequential_solve!(jsprob)