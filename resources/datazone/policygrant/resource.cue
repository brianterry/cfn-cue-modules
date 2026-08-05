package policygrant

import "github.com/brianterry/cfn-cue-modules/cfn"

// Policy Grant in AWS DataZone is an explicit authorization assignment that allows a specific principal (user, group, or project) to perform particular actions (such as creating glossary terms, managing projects, or accessing resources) on governed resources within a certain scope (like a Domain Unit or Project). Policy Grants are essentially the mechanism by which DataZone enforces fine-grained, role-based access control beyond what is possible through AWS IAM alone.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::DataZone::PolicyGrant"
	Properties: #Properties
}
