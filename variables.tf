variable "name" { 
    description = "Name of the app service"
}

variable "resource_group" { 
    description = "Name of the resource group"
}

variable "tags" { 
    description = "Tags which must contain service and environment"
}

variable "workers" { 
    default     = "1" 
    description = "Number of workers" 
}

variable "sku_name" { 
    default     = "S1" 
    description = "Azure SKU name for the workers"
}

variable "sku_tier" { 
    default     = "Standard" 
    description = "Azure SKU tier for the workers"
}
