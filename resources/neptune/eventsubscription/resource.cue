package eventsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Neptune::EventSubscription
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Neptune::EventSubscription"
	Properties: #Properties
}
