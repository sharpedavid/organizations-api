
resource "aws_dynamodb_table" "startup_sample_table" {
  name           = var.db_name
  hash_key       = "pid"
  range_key      = "createdAt"
  read_capacity  = 1
  write_capacity = 1

  attribute {
    name = "pid"
    type = "S"
  }

  attribute {
    name = "createdAt"
    type = "S"
  }

  tags = local.common_tags
}


## TODO: Document this.

resource "aws_dynamodb_table" "startup_sample_table2" {
  name           = "ProductInfo"
  hash_key       = "id"
  read_capacity  = 1
  write_capacity = 1

  attribute {
    name = "id"
    type = "S"
  }

}

## END TODO