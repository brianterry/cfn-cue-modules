package applicationassignment

import "strings"

#Properties: {
	// The ARN of the application.
	ApplicationArn: string & =~"arn:aws(-[a-z]{1,5}){0,3}:sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// An identifier for an object in IAM Identity Center, such as a user or group
	PrincipalId: string & =~"^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$" & strings.MinRunes(1) & strings.MaxRunes(47)
	// The entity type for which the assignment will be created.
	PrincipalType: "USER" | "GROUP"
}
