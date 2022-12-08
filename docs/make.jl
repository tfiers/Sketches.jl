using Sketches
using Documenter

DocMeta.setdocmeta!(Sketches, :DocTestSetup, :(using Sketches); recursive=true)

makedocs(;
    modules=[Sketches],
    authors="Tomas Fiers <tomas.fiers@gmail.com> and contributors",
    repo="https://github.com/tfiers/Sketches.jl/blob/{commit}{path}#{line}",
    sitename="Sketches.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://tfiers.github.io/Sketches.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/tfiers/Sketches.jl",
    devbranch="main",
)
