package accesspolicy

#Properties: {
	// The identity for this access policy. Choose either a user or a group but not both.
	AccessPolicyIdentity: #AccessPolicyIdentity
	// The permission level for this access policy. Valid values are ADMINISTRATOR or VIEWER.
	AccessPolicyPermission: string
	// The AWS IoT SiteWise Monitor resource for this access policy. Choose either portal or project but not both.
	AccessPolicyResource: #AccessPolicyResource
}

#AccessPolicyIdentity: {
	IamRole?: #IamRole
	IamUser?: #IamUser
	User?: #User
}

#AccessPolicyResource: {
	Portal?: #Portal
	Project?: #Project
}

#IamRole: {
	// The ARN of the IAM role.
	arn?: string
}

#IamUser: {
	// The ARN of the IAM user.
	arn?: string
}

#Portal: {
	// The ID of the portal.
	id?: string
}

#Project: {
	// The ID of the project.
	id?: string
}

#User: {
	// The AWS SSO ID of the user.
	id?: string
}
