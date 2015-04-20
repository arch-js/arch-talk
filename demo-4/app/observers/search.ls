require! {'isomorphic-fetch': 'fetch'}

matches = (search, item) -->
  search is '' or item.to-lower-case!.index-of(search.to-lower-case!) > -1

module.exports = (query, results, loading) ->
  loading.on-change ->
    # if (!arguments[0]) { return; };
    return unless it is yes
    fetch "https://api.github.com/search/users?q=#{query.deref!}"
    .then (res) ->
      throw new Error(res.status-text) unless res.status in [200 til 300]
      res
    .then (res) -> res.json!
    .then (body) ->
      loading.update -> false
      results.update ->
        body.items
        |> map ->
          user: it.login
          avatar: it.avatar_url
    .catch ->
      loading.update -> false
