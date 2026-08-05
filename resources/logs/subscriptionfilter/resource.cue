package subscriptionfilter

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::Logs::SubscriptionFilter`` resource specifies a subscription filter and associates it with the specified log group. Subscription filters allow you to subscribe to a real-time stream of log events and have them delivered to a specific destination. Currently, the supported destinations are:
// +  An Amazon Kinesis data stream belonging to the same account as the subscription filter, for same-account delivery.
// +  A logical destination that belongs to a different account, for cross-account delivery.
// +  An Amazon Kinesis Firehose delivery stream that belongs to the same account as the subscription filter, for same-account delivery.
// +  An LAMlong function that belongs to the same account as the subscription filter, for same-account delivery.
// There can be as many as two subscription filters associated with a log group.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Logs::SubscriptionFilter"
	Properties: #Properties
}
