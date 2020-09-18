function twiddle(f, Δ; τ=1e-3)
    p = zeros(length(Δ))
    ϵˢ = f(p)
    while sum(Δ) > τ
        for i in 1:length(p)
            p[i] += Δ[i]
            ϵ = f(p)
            if ϵ > ϵˢ
                ϵˢ = ϵ
                Δ[i] *= 1.1
            else
                p[i] -= 2Δ[i]
                ϵ = f(p)
                if ϵ > ϵˢ
                    ϵˢ = ϵ
                    Δ[i] *= 1.1
                else
                    p[i] += Δ[i]
                    Δ[i] *= 0.9
                end
            end
        end
    end
    return p
end