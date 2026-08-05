package deliverydestination

import "github.com/brianterry/cfn-cue-modules/cfn"

// This structure contains information about one delivery destination in your account.
// A delivery destination is an AWS resource that represents an AWS service that logs can be sent to CloudWatch Logs, Amazon S3, are supported as Kinesis Data Firehose delivery destinations.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::DeliveryDestination"
	Properties: #Properties
}
