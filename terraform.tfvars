condition = {
  "1" = {
    "title1" = "Requests per minute"
    "query1" ="FROM Transaction SELECT rate(count(*), 1 minute)"
    "title2" = "Average transaction duration, by application"
    "query2" ="FROM Transaction SELECT average(duration) FACET appName"
  }

  "2" = {
    "title1" = "Requests per minute"
    "query1" ="FROM Transaction SELECT rate(count(*), 1 minute)"
    "title2" = "Average transaction duration, by application"
    "query2" ="FROM Transaction SELECT average(duration) FACET appName"
  }
}