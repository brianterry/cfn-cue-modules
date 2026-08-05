package volumeassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::WorkspacesInstances::VolumeAssociation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkspacesInstances::VolumeAssociation"
	Properties: #Properties
}
