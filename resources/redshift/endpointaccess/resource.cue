package endpointaccess

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource schema for a Redshift-managed VPC endpoint.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Redshift::EndpointAccess"
	Properties: #Properties
}
