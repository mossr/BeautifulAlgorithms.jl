@testset "Huffman coding" begin
    # Huffman encoding
    encode(s::String) = join(map(c->encode(c, N), collect(s)))
    encode(c::Char, N, v="") = encode(c, N.left, v*'0') * encode(c, N.right, v*'1')
    encode(c::Char, N::Char, v) = N == c ? v : ""

    # Huffman decoding
    function decode(s::String, N, v="", next=N)
        for c in s
            next = (next isa Char) ? N : next
            next = (c == '0') ? next.left : next.right
            v *= (next isa Char) ? next : ""
        end
        return v
    end

    C = collect('a':'f')
    F = [0.45, 0.13, 0.12, 0.16, 0.09, 0.05]
    @assert sum(F) == 1.0
    N = huffman_coding(C, F)

    # 'a' => "0"
    # 'b' => "101"
    # 'c' => "100"
    # 'd' => "111"
    # 'e' => "1101"
    # 'f' => "1100"

    @test encode("aaaadb") == "0000111101"
    @test decode(encode("abcdef"), N) == "abcdef"
    @test decode("0", N) == "a"
    @test decode("101", N) == "b"
    @test decode("100", N) == "c"
    @test decode("111", N) == "d"
    @test decode("1101", N) == "e"
    @test decode("1100", N) == "f"
    @test decode("110", N) == ""
end