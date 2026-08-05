package assignment

import "strings"

#Properties: {
	// The sso instance that the permission set is owned.
	InstanceArn: string & =~"arn:aws(-[a-z]{1,5}){0,3}:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The permission set that the assignment will be assigned
	PermissionSetArn: string & =~"arn:aws(-[a-z]{1,5}){0,3}:sso:::permissionSet/(sso)?ins-[a-zA-Z0-9-.]{16}/ps-[a-zA-Z0-9-./]{16}" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The assignee's identifier, user id/group id
	PrincipalId: string & =~"^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(47)
	// The assignee's type, user/group
	PrincipalType: "USER" | "GROUP"
	// The account id to be provisioned.
	TargetId: string & =~"\\d{12}"
	// The type of resource to be provisioned to, only aws account now
	TargetType: "AWS_ACCOUNT"
}
