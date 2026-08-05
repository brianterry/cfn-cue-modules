package accesslogsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// Enables access logs to be sent to Amazon CloudWatch, Amazon S3, and Amazon Kinesis Data Firehose. The service network owner can use the access logs to audit the services in the network. The service network owner will only see access logs from clients and services that are associated with their service network. Access log entries represent traffic originated from VPCs associated with that network.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::VpcLattice::AccessLogSubscription"
	Properties: #Properties
}
