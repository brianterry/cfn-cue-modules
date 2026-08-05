// FedRAMP-Low compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/efs/filesystem"

// #FedRAMP_Low enforces all FedRAMP-Low controls for this resource.
// Unify with #Resource: myResource: filesystem.#Resource & compliance.#FedRAMP_Low & { ... }
#FedRAMP_Low: filesystem.#Resource & #CP_9

// Guard rule: EFS_RESOURCES_PROTECTED_BY_BACKUP_PLAN
#CP_9: {
	Properties: BackupPolicy: Status: "ENABLED"
	...
}

