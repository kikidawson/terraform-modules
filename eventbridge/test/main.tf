resource "aws_sns_topic" "this" {
  name = "tester-eventbridge-target"
}

module "eventbridge" {
  source = "../"

  eventbus_name = "tester-eventbridge"
  event_pattern = jsondecode("something")
  description   = "testing eventbridge"
  target_arn    = aws_sns_topic.this.arn
  target_id     = "SNStopic"
}
