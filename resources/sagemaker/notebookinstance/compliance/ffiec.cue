// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/notebookinstance"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#ffiec & { ... }
#ffiec: notebookinstance.#Resource & #D3_PC_Im_B_1

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#D3_PC_Im_B_1: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

