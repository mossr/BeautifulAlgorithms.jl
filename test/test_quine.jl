using Test
@testset "Quine" begin
    original_stdout = stdout
    (rd, wr) = redirect_stdout()
    quine_file = joinpath(@__DIR__, "../src/quine.jl")
    if Sys.iswindows()
        # if `dos2unix` unavailable, comment it out locally.
        run(`dos2unix $quine_file`)
    end
    include(quine_file)
    redirect_stdout(original_stdout)
    close(wr)
    quine = read(rd, String)
    @test quine == read(quine_file, String)
end
