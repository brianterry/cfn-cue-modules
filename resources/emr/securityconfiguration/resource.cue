package securityconfiguration

import "github.com/brianterry/cfn-cue-modules/cfn"

// Use a SecurityConfiguration resource to configure data encryption, Kerberos authentication, and Amazon S3 authorization for EMRFS.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EMR::SecurityConfiguration"
	Properties: #Properties
}
