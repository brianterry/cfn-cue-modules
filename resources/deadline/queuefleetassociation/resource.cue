package queuefleetassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::QueueFleetAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::QueueFleetAssociation"
	Properties: #Properties
}
