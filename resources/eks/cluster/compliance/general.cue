// general compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/cluster"

// #general enforces all general controls for this resource.
// Unify with #Resource: myResource: cluster.#Resource & compliance.#general & { ... }
#general: cluster.#Resource & #EKS_ENDPOINT_NO_PUBLIC_ACCESS

// Guard rule: EKS_ENDPOINT_NO_PUBLIC_ACCESS
#EKS_ENDPOINT_NO_PUBLIC_ACCESS: {
	Properties: ResourcesVpcConfig: EndpointPublicAccess: _ & !=_|_
	Properties: ResourcesVpcConfig: EndpointPublicAccess: false
	...
}

