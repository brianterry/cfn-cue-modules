// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: instance.#Resource & #36d & #36c & #36d_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#36d: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#36c: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#36d_2: {
	Properties: SubnetId: [_, ...]
	...
}

