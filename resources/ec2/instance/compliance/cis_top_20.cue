// cis-top-20 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #cis_top_20 enforces all cis-top-20 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#cis_top_20 & { ... }
#cis_top_20: instance.#Resource & #CIS_9 & #CIS_9_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#CIS_9: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#CIS_9_2: {
	Properties: SubnetId: [_, ...]
	...
}

