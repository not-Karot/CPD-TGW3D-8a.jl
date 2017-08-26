using Base.Test
include("../src/dimension_travel.jl")

V = rand(3, 3)
face = sparsevec(Int8[1 1 1])
m = submanifold_mapping(V, face)
err = 1e-10 
@testset "submanifold_mapping test" begin
    @test any(map((x,y)->-err<x-y<err, m*inv(m), eye(4)))
    @test any(x->-err<x<err, ([V [1; 1; 1]]*m)[:, 3])
end

