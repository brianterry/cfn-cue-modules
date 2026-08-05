package subscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::SNS::Subscription
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SNS::Subscription"
	Properties: #Properties
}
