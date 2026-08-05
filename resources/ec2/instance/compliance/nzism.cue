// nzism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #nzism enforces all nzism controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#nzism & { ... }
#nzism: instance.#Resource & #ctrl_3548 & #ctrl_3548_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_3548: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_3548_2: {
	Properties: SubnetId: [_, ...]
	...
}

