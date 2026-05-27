resource "aws_sns_topic_policy" "this" {
  count = module.this.enabled ? 1 : 0

  arn    = var.topic_arn
  policy = var.policy
}
