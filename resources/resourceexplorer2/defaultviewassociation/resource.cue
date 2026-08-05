package defaultviewassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// Definition of AWS::ResourceExplorer2::DefaultViewAssociation Resource Type
#Resource: cfn.#ResourceBase & {
	Type: "AWS::ResourceExplorer2::DefaultViewAssociation"
	Properties: #Properties
}
