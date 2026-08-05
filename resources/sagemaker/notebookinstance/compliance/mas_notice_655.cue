// mas-notice-655 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/notebookinstance"

// #mas_notice_655 enforces all mas-notice-655 controls for this resource.
// Unify with #Resource: myResource: notebookinstance.#Resource & compliance.#mas_notice_655 & { ... }
#mas_notice_655: notebookinstance.#Resource & #4_4

// Guard rule: SAGEMAKER_NOTEBOOK_NO_DIRECT_INTERNET_ACCESS
#4_4: {
	Properties: DirectInternetAccess: _ & !=_|_
	Properties: DirectInternetAccess: "Disabled"
	...
}

