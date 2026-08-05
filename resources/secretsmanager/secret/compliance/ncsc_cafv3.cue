// ncsc-cafv3 compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #ncsc_cafv3 enforces all ncsc-cafv3 controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#ncsc_cafv3 & { ... }
#ncsc_cafv3: secret.#Resource & #B3_c Stored Data

// Guard rule: SECRETSMANAGER_USING_CMK
#B3_c Stored Data: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

