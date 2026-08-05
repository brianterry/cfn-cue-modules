package accessor

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ManagedBlockchain::com.amazonaws.taiga.webservice.api#Accessor Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ManagedBlockchain::Accessor"
	Properties: #Properties
}
