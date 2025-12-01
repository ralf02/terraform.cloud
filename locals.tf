locals {
  sufix = "${var.myTagsGeneric.project}-${var.myTagsGeneric.env}"
}

resource "random_string" "sufijo-s3" {
    length = 8
    special = false
    upper = false
}

locals {
  sufix-s3 = "${var.myTagsGeneric.project}-${random_string.sufijo-s3.id}"
}
