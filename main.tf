resource "aws_cloudformation_stack" "epsagon" {
  name = "epsagon"

  template_url = "https://s3.amazonaws.com/epsagon-cloudformation/auto_template.json"
  capabilities = ["CAPABILITY_NAMED_IAM"]

  parameters {
    AWSAccount = "${var.epsagon_account_id}",
    ExternalId = "${var.epsagon_external_id}",
    EpsagonSns = "${var.epsagon_sns_name}",
  }
}
