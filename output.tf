output "webapp_${var.name}_id" { value = [ "${azurerm_template_deployment.*.id" ] }
