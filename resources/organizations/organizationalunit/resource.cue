package organizationalunit

import "github.com/brianterry/cfn-cue-modules/cfn"

// You can use organizational units (OUs) to group accounts together to administer as a single unit. This greatly simplifies the management of your accounts. For example, you can attach a policy-based control to an OU, and all accounts within the OU automatically inherit the policy. You can create multiple OUs within a single organization, and you can create OUs within other OUs. Each OU can contain multiple accounts, and you can move accounts from one OU to another. However, OU names must be unique within a parent OU or root.
#Resource: cfn.#ResourceBase & {
	Type: "AWS::Organizations::OrganizationalUnit"
	Properties: #Properties
}
