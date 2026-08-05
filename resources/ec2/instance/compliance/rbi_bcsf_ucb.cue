// rbi-bcsf-ucb compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/instance"

// #rbi_bcsf_ucb enforces all rbi-bcsf-ucb controls for this resource.
// Unify with #Resource: myResource: instance.#Resource & compliance.#rbi_bcsf_ucb & { ... }
#rbi_bcsf_ucb: instance.#Resource & #Annex_I_1_3 & #Annex_I_1_3_2

// Guard rule: EC2_INSTANCE_NO_PUBLIC_IP
#Annex_I_1_3: {
	// No clauses extracted — manual review needed
	...
}

// Guard rule: EC2_INSTANCES_IN_VPC
#Annex_I_1_3_2: {
	Properties: SubnetId: [_, ...]
	...
}

