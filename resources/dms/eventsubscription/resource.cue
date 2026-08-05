package eventsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DMS::EventSubscription
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DMS::EventSubscription"
	Properties: #Properties
}
