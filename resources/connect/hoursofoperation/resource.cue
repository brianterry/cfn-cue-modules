package hoursofoperation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Connect::HoursOfOperation
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Connect::HoursOfOperation"
	Properties: #Properties
}
