// acsc-ism compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #acsc_ism enforces all acsc-ism controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#acsc_ism & { ... }
#acsc_ism: instance.#Resource & #ctrl_1528 & #ctrl_1528_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_1528: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_1528_2: {
	Properties: SubnetId: [_, ...]
	...
}

