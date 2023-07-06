resource "newrelic_one_dashboard" "exampledash" {
  name        = "New Relic Terraform Example"
  permissions = "public_read_only"
  for_each = var.condition

  page {
    name = "New Relic Terraform Example"
   

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
        account_id = 4003058
        query      = each.value.title2
      }

      # Must be another dashboard GUID
      linked_entity_guids = ["abc123"]
    }
  }
}