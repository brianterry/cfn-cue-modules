// FedRAMP-Moderate compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/filesystem"

// #FedRAMP_Moderate enforces all FedRAMP-Moderate controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#FedRAMP_Moderate & { ... }
#FedRAMP_Moderate: filesystem.#Resource & #SC_28 & #CP_9_b

// Guard rule: EFS_ENCRYPTED_CHECK
#SC_28: {
	Properties: Encrypted: true
	...
}

// Guard rule: EFS_RESOURCES_PROTECTED_BY_BACKUP_PLAN
#CP_9_b: {
	Properties: BackupPolicy: Status: "ENABLED"
	...
}

