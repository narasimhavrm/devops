env = "dev"

components =  {

  frontend  = {
    tags = { monitor = "true", env = "dev"}
  }
  mongodb   = {
    tags = { env = "dev"}
  }
  catalogue = {
    tags = { monitor = "true", env = "dev"}
  }
  redis     = {
    tags = {  env = "dev"}
  }
  user      = {
    tags = { monitor = "true", env = "dev"}
  }
  cart      = {
    tags = { monitor = "true", env = "dev"}
  }
  mysql     = {
    tags = { env = "dev"}
  }
  shipping  = {
    tags = { monitor = "true", env = "dev"}
  }
  rabbitmq  = {
    tags = { env = "dev"}
  }
  payment   = {
    tags = { monitor = "true", env = "dev"}
  }

}

tags = {
  company_name = "ABC Company"
  business = "ecomm"
  business_unit = "APAC"
  cost_center = "322"
  project_name = "myproject"
}

vpc = {
  main = {
    cidr_block = "10.0.0.0/16"
    ##web_subnet_cidr_block = ["10.0.0.0/24"]
    subnets = {
      web = { cidr_block = ["10.0.0.0/24", "10.0.1.0/24"] }
      app = { cidr_block = ["10.0.2.0/24", "10.0.3.0/24"] }
      db = { cidr_block = ["10.0.4.0/24", "10.0.5.0/24"] }
      public = { cidr_block = ["10.0.6.0/24", "10.0.7.0/24"] }
    }
  }
}

default_vpc_id = "vpc-07c5e9a858a2f95c1"
default_vpc_rt = "rtb-035d7d93dadf94f09"
allow_ssh_cidr = ["172.31.16.108/32"]
zone_id = "Z034092834K6LW0HQ9HDN"
kms_key_id = "af887b98-0e7c-49a1-93eb-aeaab4189fc3"

rabbitmq = {
  main = {
    instance_type = "t2.micro"
    component = "rabbitmq"

  }
}

rds = {
  main = {
    component      = "mysql"
    engine                  = "aurora-mysql"
    engine_version          = "5.7.mysql_aurora.2.11.3"
    database_name           = "dummy"

  }
}