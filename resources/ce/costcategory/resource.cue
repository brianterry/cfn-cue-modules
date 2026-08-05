package costcategory

import "github.com/brianterry/cfn-cue-modules/cfn"

// Resource Type definition for AWS::CE::CostCategory. Cost Category enables you to map your cost and usage into meaningful categories. You can use Cost Category to organize your costs using a rule-based engine.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::CE::CostCategory"
	Properties: #Properties
}
