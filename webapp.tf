resource "azurerm_template_deployment" "webapp-${var.name}" {
    name = "${var.name}"
    resource_group_name = "${var.resource_group}"
    deployment_mode = "Incremental"
    template_body = "${file("${path.module}/appservice.template.json")}"
    parameters {
        name = "${var.name}"
        service = "${var.tags["Service"]}"
        environment = "${var.tags["Environment"]}"
        workers = "${var.workers}"
        sku_name = "${var.sku_name}"
        sku_tier = "${var.sku_tier}"
    }
}
