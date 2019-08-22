using Plots

# from: https://julialang.org/downloads/plotting.html

plotly() # Choose the Plotly.jl backend for web interactivity

# the plot will appear in an auto-opened web browser tab:

plot(rand(10,10),linewidth=2,title="My Plot")
   
