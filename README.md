# julia_my_code_snippets

load into repl using:

        include("rdf_client.jl")

## string tokenization

good reference:  https://github.com/JuliaText/WordTokenizers.jl

```````` lang=Julia
tokenize("the cat, seeing the bird, ran outside")

tokenize("the cat, seeing the bird, ran outside") |> print
````````

## TextAnalysis

reference:  http://juliatext.github.io/TextAnalysis.jl/

## AdaGram

reference:  https://juliaobserver.com/packages/AdaGram

## Word2Vec

reference:  https://juliaobserver.com/packages/Word2Vec

## TopicModels

reference:  https://juliaobserver.com/packages/TopicModels

## WordNet

reference:  https://juliaobserver.com/packages/WordNet

note: may not be compatible yet with Julia 1.x

## Levenshtein

reference:  https://juliaobserver.com/packages/Levenshtein

note: didn't work for me with Julia 1.03

## Text indexing and search using FMindexes

reference: https://github.com/BioJulia/FMIndexes.jl
note: not yet compatible with Julia version 1.x

## Kanren

reference: https://github.com/habemus-papadum/LilKanren.jl

## wrapper for Microsoft's Z3 theorm prover

reference: https://github.com/zenna/Z3.jl
may not be compatible with Julia 1.x

## https://github.com/JuliaML/MLDatasets.jl for getting MNIST, etc.

## Wrapper for Julia ML ecosystem data sets

reference: https://juliaobserver.com/packages/MLDataUtils
documentation: https://mldatautilsjl.readthedocs.io/en/latest/

## Donate on Patreon to support all of my projects

Please visit [https://www.patreon.com/markwatson](https://www.patreon.com/markwatson) and sign up to donate $1/month
