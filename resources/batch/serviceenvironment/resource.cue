package serviceenvironment

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Batch::ServiceEnvironment
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Batch::ServiceEnvironment"
	Properties: #Properties
}
