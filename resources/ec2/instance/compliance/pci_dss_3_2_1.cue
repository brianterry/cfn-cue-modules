// PCI-DSS-3-2-1 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #PCI_DSS_3_2_1 enforces all PCI-DSS-3-2-1 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#PCI_DSS_3_2_1 & { ... }
#PCI_DSS_3_2_1: instance.#Resource & #1_2 & #2_2 & #1_2_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#1_2: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#2_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#1_2_2: {
	Properties: SubnetId: [_, ...]
	...
}

