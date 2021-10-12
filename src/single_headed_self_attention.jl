using Flux

function single_headed_self_attention(Q::AbstractMatrix{T},
                                      K::AbstractMatrix{T},
                                      V::AbstractMatrix{T})::AbstractMatrix{T} where {T<:Number}

    dₖ = size(K, 1)
    attention_scores = (K' * Q)./ convert(T, sqrt(dₖ)) |> softmax
    V * attention_scores
end