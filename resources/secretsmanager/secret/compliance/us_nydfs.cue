// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/secretsmanager/secret"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: secret.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: secret.#Resource & #ctrl_500_15_a

// Guard rule: SECRETSMANAGER_USING_CMK
#ctrl_500_15_a: {
	Properties: KmsKeyId: _ & !=_|_
	Properties: KmsKeyId: "alias/aws/secretsmanager"
	...
}

