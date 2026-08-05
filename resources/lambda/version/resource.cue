package version

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Lambda::Version
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Lambda::Version"
	Properties: #Properties
}
