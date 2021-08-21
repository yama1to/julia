using Plots 
a = 1.4
b = 0.3

X = zeros(Float32, 1,10000)
Y = zeros(Float32, 1,10000)

for i in 2:10000
    #@show i
    next_x = Y[1,i-1]+1 - a*X[1,i-1]^2
    #@show next_x
    next_y = b*X[1,i-1]
    #@show next_y
    X[i] = next_x
    Y[i] = next_y
end 

#@show a,b
plot(X,Y,st=:scatter,
    xlabel = "x",ylabel = "y",
    title="henon",fmt=:png)
