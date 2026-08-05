package truststore

import "github.com/brianterry/cfn-cue-modules/cfn"

// A trust store.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CloudFront::TrustStore"
	Properties: #Properties
}
