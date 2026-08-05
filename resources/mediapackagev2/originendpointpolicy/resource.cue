package originendpointpolicy

import "github.com/brianterry/cfn-cue-modules/cfn"

// <p>Represents a resource policy that allows or denies access to an origin endpoint.</p>
#Resource: cfn.#ResourceBase & {
	Type: "AWS::MediaPackageV2::OriginEndpointPolicy"
	Properties: #Properties
}
