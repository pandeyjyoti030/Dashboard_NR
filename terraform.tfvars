condition = {
  "0" = {
    "title1" = "Requests per minute"
    "query1" = "FROM Transaction SELECT rate(count(*), 1 minute)"

    "title2" = "Average transaction duration, by application"
    "query2" = "SELECT count(*) FROM Transaction FACET http.statusText"

    "title3" = "Average transaction duration, by application"
    "query3" = "SELECT average(duration) FROM Transaction FACET name SINCE 1 week ago"
  }

  "1" = {
    "title1" = "Requests every 2 minute"
    "query1" = "FROM Transaction SELECT rate(count(*), 2 minute)"

    "title2" = "Average transaction duration"
    "query2" = "SELECT count(*) FROM Transaction FACET http.statusText"

    "title3" = "Average transaction duration"
    "query3" = "FROM Transaction SELECT average(duration) FACET appName"
  }
}
