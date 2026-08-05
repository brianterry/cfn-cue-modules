package group

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Greengrass::Group
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Greengrass::Group"
	Properties: #Properties
}
