package eventsubscription

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::DocDB::EventSubscription
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DocDB::EventSubscription"
	Properties: #Properties
}
