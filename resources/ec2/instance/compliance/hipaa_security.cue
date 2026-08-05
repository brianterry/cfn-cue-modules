// hipaa-security compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/ec2/instance"

// #hipaa_security enforces all hipaa-security controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#hipaa_security & { ... }
#hipaa_security: instance.#Resource & #ctrl_164_308_a_7_i & #ctrl_164_312_b & #ctrl_164_308_a_3_i & #ctrl_164_308_a_3_i_2 & #ctrl_164_308_a_3_i_3

// Guard rule: EBS_OPTIMIZED_INSTANCE
#ctrl_164_308_a_7_i: {
	Properties: EbsOptimized: true
	...
}

// Guard rule: EC2_INSTANCE_DETAILED_MONITORING_ENABLED
#ctrl_164_312_b: {
	Properties: Monitoring: true
	...
}

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#ctrl_164_308_a_3_i: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCE_PROFILE_ATTACHED
#ctrl_164_308_a_3_i_2: {
	Properties: IamInstanceProfile: _ & !=_|_
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#ctrl_164_308_a_3_i_3: {
	Properties: SubnetId: [_, ...]
	...
}

