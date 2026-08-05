package endpointauthorization

import "github.com/brianterry/cfn-cue-modules/cfn"

// Describes an endpoint authorization for authorizing Redshift-managed VPC endpoint access to a cluster across AWS accounts.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::EndpointAuthorization"
	Properties: #Properties
}
