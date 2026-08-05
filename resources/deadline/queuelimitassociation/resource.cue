package queuelimitassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::QueueLimitAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::QueueLimitAssociation"
	Properties: #Properties
}
