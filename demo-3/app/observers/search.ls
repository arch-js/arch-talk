things =
  * "Hovercraft full of eels"
  * "Ex-parrot"
  * "Eggs, beans, bacon and spam"
  * "Knights who say Ni!"
  * "Flying circus"

matches = (search, item) -->
  search is '' or item.to-lower-case!.index-of(search.to-lower-case!) > -1

module.exports = (query, results) ->
  query.on-change (q) ->
    results.update ->
      things
      |> filter matches q