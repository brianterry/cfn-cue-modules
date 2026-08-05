// us-nydfs compliance constraints for this resource.
// Generated from aws-guard-rules-registry Guard rules.
package compliance

import "github.com/brianterry/cfn-cue-modules/resources/sagemaker/endpointconfig"

// #us_nydfs enforces all us-nydfs controls for this resource.
// Unify with #Resource: myResource: endpointconfig.#Resource & compliance.#us_nydfs & { ... }
#us_nydfs: endpointconfig.#Resource & #500_02_a

// Guard rule: SAGEMAKER_ENDPOINT_CONFIGURATION_KMS_KEY_CONFIGURED
#500_02_a: {
	Properties: KmsKeyId: _ & !=_|_
	...
}

