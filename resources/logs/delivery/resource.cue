package delivery

import "github.com/brianterry/cfn-cue-modules/cfn"

// This structure contains information about one delivery in your account.

A delivery is a connection between a logical delivery source and a logical delivery destination.

For more information, see [CreateDelivery](https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateDelivery.html).
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::Delivery"
	Properties: #Properties
}
