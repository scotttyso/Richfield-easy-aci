
/*_____________________________________________________________________________________________________________________

Tenants
_______________________________________________________________________________________________________________________
*/
variable "tenants" {
  default = {
    "default" = {
      alias             = ""
      annotation        = ""
      annotations       = []
      controller_type   = "apic"
      description       = ""
      monitoring_policy = "default"
      global_alias      = ""
      sites             = []
      users             = []
    }
  }
  description = <<-EOT
    Key — Name of the Tenant.
    * controller_type: (optional) — The type of controller.  Options are:
      - apic: (default)
      - ndo
    * description: Description to add to the Object.  The description can be up to 128 alphanumeric characters.
    APIC Specific Attributes:
    * alias: (optional) — The Name Alias feature (or simply "Alias" where the setting appears in the GUI) changes the displayed name of objects in the APIC GUI. While the underlying object name cannot be changed, the administrator can override the displayed name by entering the desired name in the Alias field of the object properties menu. In the GUI, the alias name then appears along with the actual object name in parentheses, as name_alias (object_name).
    * annotation: (optional) — An annotation will mark an Object in the GUI with a small blue circle, signifying that it has been modified by  an external source/tool.  Like Nexus Dashboard Orchestrator or in this instance Terraform.
    * annotations: (optional) — You can add arbitrary key:value pairs of metadata to an object as annotations (tagAnnotation). Annotations are provided for the user's custom purposes, such as descriptions, markers for personal scripting or API calls, or flags for monitoring tools or orchestration applications such as Cisco Multi-Site Orchestrator (MSO). Because APIC ignores these annotations and merely stores them with other object data, there are no format or content restrictions imposed by APIC.
    * global_alias: (optional) — The Global Alias feature simplifies querying a specific object in the API. When querying an object, you must specify a unique object identifier, which is typically the object's DN. As an alternative, this feature allows you to assign to an object a label that is unique within the fabric.
    * monitoring_policy: (default: default) — To keep it simple the monitoring policy must be in the common Tenant.
  EOT
  type = map(object(
    {
      alias      = optional(string)
      annotation = optional(string)
      annotations = optional(list(object(
        {
          key   = string
          value = string
        }
      )))
      controller_type   = optional(string)
      description       = optional(string)
      global_alias      = optional(string)
      monitoring_policy = optional(string)
    }
  ))
}
