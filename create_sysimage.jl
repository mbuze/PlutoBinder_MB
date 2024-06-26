using PackageCompiler
create_sysimage([:Pluto, :PlutoUI,
                 :Markdown, :Plots,
                 :PythonCall, :PlutoTeachingTools,
                 :HypertextLiteral, :ForwardDiff, :Distances,
                 :LinearAlgebra, :Random,
                 :Optim, :Statistics, :Distributions,
                 :BifurcationKit, :OptimalTransport, :ApproxFun,
                 :GaussianProcesses, :CondaPkg];
                #precompile_execution_file = "warmup.jl",
                precompile_statements_file = "combined_trace.jl",
                #replace_default = true,
                sysimage_path="/home/jovyan/sysimage.so",
                cpu_target = PackageCompiler.default_app_cpu_target())
