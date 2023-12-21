resource azurerm_monitor_log_profile "logging_profile" {
  # checkov:skip=1003709418909076480_AZR_1681190513864: ADD REASON
  storage_account_id = azurerm_storage_account.example.id
  categories         = ["Action"]
  locations          = [var.location]
  name               = "terragoat-${var.environment}"
  retention_policy {
    enabled = true
    days    = 30
  }
}