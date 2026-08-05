package networkaclentry

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::NetworkAclEntry
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::NetworkAclEntry"
	Properties: #Properties
}
