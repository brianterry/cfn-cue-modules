package farm

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::Farm
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::Farm"
	Properties: #Properties
}
