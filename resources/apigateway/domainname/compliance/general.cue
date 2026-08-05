// general compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/domainname"

// #general enforces all general controls for this resource.
// Unify with #Resource: myResource: domainname.#Resource & compliance.#general & { ... }
#general: domainname.#Resource & #API_GW_ENDPOINT_TYPE_CHECK

// Guard rule: API_GW_ENDPOINT_TYPE_CHECK
#API_GW_ENDPOINT_TYPE_CHECK: {
	some: _  // operator  not yet supported
	Properties: EndpointConfiguration: Types: "REGIONAL" | "PRIVATE" | "EDGE"
	...
}

