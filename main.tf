resource "newrelic_one_dashboard" "dashboard" {
  for_each    = var.condition
  name        = "New Relic Terraform-1"
  permissions = "public_read_only"

  page {
    name = "New Relic Terraform-1"

    widget_billboard {
      title  = each.value.title1
      row    = 1
      column = 1
      width  = 6
      height = 3

      nrql_query {
        query = each.value.query1
      }
    }

    widget_bar {
      title  = each.value.title2
      row    = 1
      column = 7
      width  = 6
      height = 3

      nrql_query {
        # account_id = 4003058
        query      = each.value.query2
      }

    }

    widget_bar {
      title  = each.value.title3
      row    = 4
      column = 1
      width  = 6
      height = 3

      nrql_query {
        # account_id = 4003058
        query      = each.value.query3
      }
    }
  }
}