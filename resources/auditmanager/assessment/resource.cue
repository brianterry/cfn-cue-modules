package assessment

import "github.com/brianterry/cfn-cue-modules/cfn"

// An entity that defines the scope of audit evidence collected by AWS Audit Manager.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::AuditManager::Assessment"
	Properties: #Properties
}
