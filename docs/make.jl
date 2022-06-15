push!(LOAD_PATH,"../src/")
import Pkg;
Pkg.add("Documenter")
using Documenter, LinearAlgebraicRepresentation
Lar = LinearAlgebraicRepresentation


makedocs(
	format = Documenter.HTML(
		prettyurls = get(ENV, "CI", nothing) == "true"
	),
	sitename = "CPD-TGW3D-8a.jl",
	assets = ["assets/lar.css", "assets/logo.png"],
	pages = [
		"Home" => "index.md",
		"TGW3D-8a" => "arrangement.md",
	]
)
