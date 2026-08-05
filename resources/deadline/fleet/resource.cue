package fleet

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Deadline::Fleet
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Deadline::Fleet"
	Properties: #Properties
}
