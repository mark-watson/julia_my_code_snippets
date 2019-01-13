using JSON
using HTTP
import HTTP.URIs: escapeuri

prefixUrl = "http://dbpedia.org/sparql/?query="

function build_sparql_query(query)
    prefixUrl * escapeuri(query) * "&format=json"
end

function dbpedia(query)
    response = HTTP.get(build_sparql_query(query))
    println(response)
    JSON.parse(String(response.body))
end

test_query = "select * where {<http://dbpedia.org/resource/IBM> <http://dbpedia.org/ontology/abstract> ?o . FILTER langMatches(lang(?o), \"EN\")} LIMIT 100"

response = dbpedia(test_query)
println(json(response,2)) # pretty print JSON for readability
