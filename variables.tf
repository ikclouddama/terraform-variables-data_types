# Author Ibrehima Keita Devops Engineer US-Silver Spring 
# We will be discussing variables and data types in terraform 
#string
variable "vpc_name" {
  
  type = string
}
# number
variable "vpc_number" {
    type = number
    
  
}
# Boolean 
variable "vpc_exists" {
    type = bool
    
    #VPC_EXISTS=var.vpc_exists
  
}
# ===> string , number and boolean are called primitive type
#list
variable "vpc_list" {
    type=list(number)
    
    # use cases security group numbers
    # VPC-Number= var.vpc_list
  
}
variable "vpc_list2" {
    type = list(string)
  
    # use case list of subnets and vpc cidr_blocks
    #VPC_LIST=var.vpc_list[1]
  
}
# map
variable "vpc-map" {
    type = map
    
    #Read ====> VPC_MAP=var.VPC_MAP["key1"]
  
}
# tuple ====> support different type of date (multiple data type)
variable "tuple" {
    type = tuple([string,number,string])
    
    #Read ===> VPC_TUPLE=var.vpc_tuple[1]
  
}
# Objects
variable "vpc_objects" {
    type = object({key1=string,key2=number})
    
   #Read =====> VPC_OBJECT=var.vpc_objects[key1]
  
}