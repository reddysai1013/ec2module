variable "region"{
    description = "(Optional) AWS Region where the provider will operate. The Region must be set. Can also be set with either the AWS_REGION or AWS_DEFAULT_REGION environment variables, or via a shared config file parameter region if profile is used. If credentials are retrieved from the EC2 Instance Metadata Service, the Region can also be retrieved from the metadata. Most Regional resources, data sources and ephemeral resources support an optional top-level region argument which can be used to override the provider configuration value. See the individual resource's documentation for details."
    type = string
    default = "us-east-1"
}

variable "ami" {
  description = "(Optional) AMI to use for the instance. Required unless launch_template is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting ami will override the AMI specified in the Launch Template."
  type = string
  default = "ami-0f9de6e2d2f067fca" 
}

variable "instance_type" {

    description ="(Optional) Instance type to use for the instance. Required unless launch_template is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting instance_type will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance."
    type = string
    //default = "t3.micro"
}

variable "monitoring"{
    description ="(Optional) If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)"
    type = bool
    default = false
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(string)
  default     = {Name = "HelloWorld"}
}
