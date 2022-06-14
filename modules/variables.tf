variable "vpc_id" {
	type = string
}

variable "cidr_block" {
	type = string
} 

variable "ami" {
	type = string
}

variable "instance_type" {
	type    = string
	default = "t2.micro"
}

variable "name" {
	type = string
}

variable "key_name" {
    default = "tf-projeto4"
} 

variable "cidrs_acesso_remoto" {
    type = list
    description = ""
    default = ["0.0.0.0/0"]
}

variable "instance_tags" { 
    description = ""
    type        = map(string)
    default     = {
        name = "Engenharia de Software"
        project     = "7º Periodo"        
    }
}