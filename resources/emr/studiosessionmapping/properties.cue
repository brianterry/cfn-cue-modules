package studiosessionmapping

import "strings"

#Properties: {
	// The name of the user or group. For more information, see UserName and DisplayName in the AWS SSO Identity Store API Reference. Either IdentityName or IdentityId must be specified.
	IdentityName: string
	// Specifies whether the identity to map to the Studio is a user or a group.
	IdentityType: "USER" | "GROUP"
	// The Amazon Resource Name (ARN) for the session policy that will be applied to the user or group. Session policies refine Studio user permissions without the need to use multiple IAM user roles.
	SessionPolicyArn: #IamPolicyArn
	// The ID of the Amazon EMR Studio to which the user or group will be mapped.
	StudioId: string & =~"^es-[0-9A-Z]+" & strings.MinRunes(4) & strings.MaxRunes(256)
}
