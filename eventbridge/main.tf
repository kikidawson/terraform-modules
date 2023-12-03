resource "aws_cloudwatch_event_bus" "this" {
  name = var.eventbus_name
}

resource "aws_cloudwatch_event_rule" "this" {
  name          = var.eventbus_name
  description   = var.description
  event_pattern = var.event_pattern
}

resource "aws_cloudwatch_event_target" "this" {
  rule      = aws_cloudwatch_event_rule.this.name
  target_id = var.target_id
  arn       = var.target_arn
}
