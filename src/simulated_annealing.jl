function simulated_annealing(f, x, P, t::Function, k_max)
    y = f(x)
    x_best, y_best = x, y
    for k in 1:k_max
        x′ = x + rand(P)
        y′ = f(x′)
        Δy = y′ - y
        if Δy ≤ 0 || rand() < exp(-Δy/t(k))
            x, y = x′, y′
        end
        if y′ < y_best
            x_best, y_best = x′, y′
        end
    end
    return x_best
end