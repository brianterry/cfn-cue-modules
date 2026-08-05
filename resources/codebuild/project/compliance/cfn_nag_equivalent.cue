// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/project"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: project.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: project.#Resource & #W32 & #W83

// Guard rule: CODEBUILD_ENCRYPTION_KEY_RULE
#W32: {
	Type: "AWS::CodeBuild::Project"
	Properties: EncryptionKey: _ & !=_|_
	...
}

// Guard rule: DAX_ENCRYPTION_ENABLED
#W83: {
	Properties: SSESpecification: SSEEnabled: true
	...
}

