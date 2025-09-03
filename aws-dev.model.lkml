connection: "axp-aws-dev"

include: "/views/aws_dev/*.view.lkml"

explore: aws_cost {
  description: "AWS Cost on Dev Account"
  label: "AWS Dev Cost"
  group_label: "Demo"

}
explore: aws_cost_ytd {
  description: "AWS Cost YTD"
  label: "AWS Dev Cost YTD"
  group_label: "Demo"
}

explore: cloudtrail_log {
  description: "AWS Cloudtrail log"
  label: "AWS Dev Cloudtrail Log"
  group_label: "Demo"
  persist_for: "0 seconds"
}
