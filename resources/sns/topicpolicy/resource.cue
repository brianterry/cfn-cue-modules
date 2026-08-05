package topicpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// The ``AWS::SNS::TopicPolicy`` resource associates SNS topics with a policy. For an example snippet, see [Declaring an policy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-iam.html#scenario-sns-policy) in the *User Guide*.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SNS::TopicPolicy"
	Properties: #Properties
}
