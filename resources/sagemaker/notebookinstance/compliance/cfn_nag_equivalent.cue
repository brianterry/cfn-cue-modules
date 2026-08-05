// cfn-nag-equivalent compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #cfn_nag_equivalent enforces all cfn-nag-equivalent controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#cfn_nag_equivalent & { ... }
#cfn_nag_equivalent: notebookinstance.#Resource & #W1201

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#W1201: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

