package assessmenttemplate

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::Inspector::AssessmentTemplate
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Inspector::AssessmentTemplate"
	Properties: #Properties
}
