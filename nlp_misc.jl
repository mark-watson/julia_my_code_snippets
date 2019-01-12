using TextAnalysis

str = "President Clinton went to Mexico to visit the Cocoa Cola Compnay offices in Mexico City last year."
sd = StringDocument(str)

fd = FileDocument("sample.txt")

my_tokens = String["To", "be", "or", "not", "to", "be..."]
td = TokenDocument(my_tokens)

my_ngrams = Dict{String, Int}("To" => 1, "be" => 2,
                                "or" => 1, "not" => 1,
                                "to" => 1, "be..." => 1)
ngd = NGramDocument(my_ngrams)

# get the text from a document:

text(fd)

# tokenize a document:

tokens(fd)

# generate bigrams from a document:

ngrams(fd, 2)

# determine language:

language(fd)

# modify a string document removing bad unicode characters:

remove_corrupt_utf8!(sd)  # obviously does not work on a file document

# modify a string document removing specified words:

remove_words!(sd, ["the", "in"])

# remove specific types of words from a string document:

#remove_articles!()
#remove_indefinite_articles!()
#remove_definite_articles!()
#remove_prepositions!()
#remove_pronouns!()
#remove_stop_words!()

# word stemming:

stem!(sd)

# copy a file document into a new string document:

sd2 = StringDocument(text(fd))

# working with collections of cocuments: creating a corpus

str = "President Clinton went to Mexico to visit the Cocoa Cola Compnay offices in Mexico City last year."
sd = StringDocument(str)

crps = Corpus(Any[sd, fd])

# standardize all documents in a corpus into a single document type:

standardize!(crps, NGramDocument)

# default lexicon in a corpus is empty:

lexicon(crps)
update_lexicon!(crps)
lexicon(crps)

# fraction of occurences of a word compared to all words:

lexical_frequency(crps, "last")

# create and list an inverse index:

update_inverse_index!(crps)
inverse_index(crps)

# find documents in a corpus that contain any given word:

crps["to"]

# create a document term index:

m = DocumentTermMatrix(crps)

# and a TF-IDF:

tf_idf(m)

m = DocumentTermMatrix(crps)

# LSA Latent Semantic TextAnalysis

m = DocumentTermMatrix(crps)
k = 2            # number of topics
iteration = 1000 # number of gibbs sampling iterations
alpha = 0.1      # hyper parameter
beta = 0.1       # hyber parameter
l = lda(m, k, iteration, alpha, beta) # l is k x word matrix.
                                      # value is probablity of occurrence of a word in a topic.
