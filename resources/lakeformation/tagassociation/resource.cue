package tagassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// A resource schema representing a Lake Formation Tag Association. While tag associations are not explicit Lake Formation resources, this CloudFormation resource can be used to associate tags with Lake Formation entities.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::LakeFormation::TagAssociation"
	Properties: #Properties
}
