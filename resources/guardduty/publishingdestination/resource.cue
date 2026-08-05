package publishingdestination

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::GuardDuty::PublishingDestination.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::GuardDuty::PublishingDestination"
	Properties: #Properties
}
