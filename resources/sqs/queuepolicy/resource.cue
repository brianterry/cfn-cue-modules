package queuepolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::SQS::QueuePolicy`` type applies a policy to SQS queues. For an example snippet, see [Declaring an policy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-sqs-policy) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SQS::QueuePolicy"
	Properties: #Properties
}
