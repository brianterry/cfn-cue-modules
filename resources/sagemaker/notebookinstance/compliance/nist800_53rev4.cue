// NIST800-53Rev4 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #NIST800_53Rev4 enforces all NIST800-53Rev4 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#NIST800_53Rev4 & { ... }
#NIST800_53Rev4: notebookinstance.#Resource & #SC_13 & #AC_3

// Guard rule: SAGEMAKER_NOTEBOOK_INSTANCE_KMS_KEY_CONFIGURED
#SC_13: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#AC_3: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

