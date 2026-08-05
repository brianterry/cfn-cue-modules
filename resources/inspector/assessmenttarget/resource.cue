package assessmenttarget

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Inspector::AssessmentTarget
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Inspector::AssessmentTarget"
	Properties: #Properties
}
