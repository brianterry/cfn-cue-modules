package enclavecertificateiamroleassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Associates an AWS Identity and Access Management (IAM) role with an AWS Certificate Manager (ACM) certificate. This association is based on Amazon Resource Names and it enables the certificate to be used by the ACM for Nitro Enclaves application inside an enclave.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::EC2::EnclaveCertificateIamRoleAssociation"
	Properties: #Properties
}
