package securitygroup

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::SecurityGroup
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::SecurityGroup"
	Properties: #Properties
}
