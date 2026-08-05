package host

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::Host
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::Host"
	Properties: #Properties
}
