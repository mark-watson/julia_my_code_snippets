using SQLite
using Tables, DataFrames

# make sure file test.db does not exist before running this

db = SQLite.DB("test.db")

SQLite.Query(db, "CREATE TABLE test(name string, email string);")


SQLite.Query(db, "INSERT INTO test VALUES ('Mark', 'mark.watson@gmail.com');")


r = SQLite.Query(db,"select * from test limit 10") |> DataFrame
