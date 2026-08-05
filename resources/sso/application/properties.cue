package application

import "strings"

#Properties: {
	// The ARN of the application provider under which the operation will run
	ApplicationProviderArn: string & =~"^arn:aws(-[a-z]{1,5}){0,3}:sso::aws:applicationProvider/[a-zA-Z0-9-/]+$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The description information for the Identity Center (SSO) Application
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The ARN of the instance of IAM Identity Center under which the operation will run
	InstanceArn: string & =~"^arn:aws(-[a-z]{1,5}){0,3}:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The name you want to assign to this Identity Center (SSO) Application
	Name: string & =~"^[\\w+=,.@-]+$" & strings.MinRunes(0) & strings.MaxRunes(255)
	// A structure that describes the options for the portal associated with an application
	PortalOptions?: #PortalOptionsConfiguration
	// Specifies whether the application is enabled or disabled
	Status?: "ENABLED" | "DISABLED"
	Tags?: [...#Tag]
}

#PortalOptionsConfiguration: {
	// A structure that describes the sign-in options for the access portal
	SignInOptions?: #SignInOptions
	// Indicates whether this application is visible in the access portal
	Visibility?: "ENABLED" | "DISABLED"
}

#SignInOptions: {
	// The URL that accepts authentication requests for an application, this is a required parameter if the Origin parameter is APPLICATION
	ApplicationUrl?: string & =~"^http(s)?:\\/\\/[-a-zA-Z0-9+&@#\\/%?=~_|!:,.;]*[-a-zA-Z0-9+&bb@#\\/%?=~_|]$" & strings.MinRunes(1) & strings.MaxRunes(512)
	// This determines how IAM Identity Center navigates the user to the target application
	Origin: "IDENTITY_CENTER" | "APPLICATION"
}

#Tag: {
	Key: string & =~"^[\\w+=,.@-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[\\w+=,.@-]+$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
