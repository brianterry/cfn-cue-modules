package ec2fleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::EC2Fleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::EC2Fleet"
	Properties: #Properties
}
