package policyassociation

import "github.com/brianterry/cfn-cue-modules/cfn"

// The AWS::SecurityHub::PolicyAssociation resource represents the AWS Security Hub Central Configuration Policy associations in your Target. Only the AWS Security Hub delegated administrator can create the resouce from the home region.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::SecurityHub::PolicyAssociation"
	Properties: #Properties
}
