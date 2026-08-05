package snapshotblockpublicaccess

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::SnapshotBlockPublicAccess
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SnapshotBlockPublicAccess"
	Properties: #Properties
}
