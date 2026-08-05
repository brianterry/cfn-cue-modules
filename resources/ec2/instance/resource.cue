package instance

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::EC2::Instance
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::Instance"
	Properties: #Properties
}
