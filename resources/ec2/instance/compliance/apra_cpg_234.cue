// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: instance.#Resource & #ctrl_36d & #ctrl_36c & #ctrl_36d_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_36d: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#ctrl_36c: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_36d_2: {
	Properties: SubnetId: [_, ...]
	...
}

