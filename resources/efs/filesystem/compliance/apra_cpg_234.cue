// apra-cpg-234 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #apra_cpg_234 enforces all apra-cpg-234 controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#apra_cpg_234 & { ... }
#apra_cpg_234: filesystem.#Resource & #ctrl_52c

// Guard rule: EFS_ENCRYPTED_CHECK
#ctrl_52c: {
	Properties: Encrypted: true
	...
}

