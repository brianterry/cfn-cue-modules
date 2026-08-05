package assessmentframework

import "github.com/brianterry/cfn-cue-modules/cfn"

// Creates a custom framework in AWS Audit Manager.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AuditManager::AssessmentFramework"
	Properties: #Properties
}
