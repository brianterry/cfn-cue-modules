package deliverysource

import "github.com/brianterry/cfn-cue-modules/cfn"

// A delivery source is an AWS resource that sends logs to an AWS destination. The destination can be CloudWatch Logs, Amazon S3, or Kinesis Data Firehose.
// Only some AWS services support being configured as a delivery source. These services are listed as Supported [V2 Permissions] in the table at [Enabling logging from AWS services](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AWS-logs-and-resource-policy.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::DeliverySource"
	Properties: #Properties
}
