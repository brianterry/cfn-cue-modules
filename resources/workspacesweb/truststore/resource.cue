package truststore

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::WorkSpacesWeb::TrustStore Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::WorkSpacesWeb::TrustStore"
	Properties: #Properties
}
