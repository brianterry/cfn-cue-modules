// nist-800-172 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #nist_800_172 enforces all nist-800-172 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#nist_800_172 & { ... }
#nist_800_172: notebookinstance.#Resource & #3_1_3e

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#3_1_3e: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

