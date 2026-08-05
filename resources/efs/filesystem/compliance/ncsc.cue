// ncsc compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #ncsc enforces all ncsc controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#ncsc & { ... }
#ncsc: filesystem.#Resource & #ctrl_2_Asset_protection_and_resilience

// Guard rule: EFS_ENCRYPTED_CHECK
#ctrl_2_Asset_protection_and_resilience: {
	Properties: Encrypted: true
	...
}

