// ffiec compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #ffiec enforces all ffiec controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#ffiec & { ... }
#ffiec: instance.#Resource & #D3_PC_Im_B_1 & #D3_PC_Am_B_1 & #D3_PC_Am_B_10

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#D3_PC_Im_B_1: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#D3_PC_Am_B_1: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#D3_PC_Am_B_10: {
	Properties: SubnetId: [_, ...]
	...
}

