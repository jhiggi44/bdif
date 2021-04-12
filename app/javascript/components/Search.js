import React, { useState } from 'react'

function Search() {
  const [query, setQuery] = useState("Pokemon's name")

  return (
    <form onSubmit={(e) => {e.preventDefault(); console.log("submit", query)}} >
      <label>
        Search:
        <input type="text" value={query} onChange={(e) => setQuery(e.target.value)} />
      </label>
      <input type="submit" value="Submit" />
    </form>
  )
}

export default Search;