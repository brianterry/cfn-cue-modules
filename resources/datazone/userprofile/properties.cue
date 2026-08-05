package userprofile

import "strings"

#Properties: {
	// The identifier of the Amazon DataZone domain in which the user profile would be created.
	DomainIdentifier: string & =~"^dzd[-_][a-zA-Z0-9_-]{1,36}$"
	// The session name of the user profile.
	SessionName?: string & strings.MinRunes(2) & strings.MaxRunes(64)
	Status?: #UserProfileStatus
	// The ID of the user.
	UserIdentifier: string & =~"(^([0-9a-f]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$|^[a-zA-Z_0-9+=,.@-]+$|^arn:aws:iam::\\d{12}:.+$)"
	UserType?: #UserType
}

#IamUserProfileDetails: {
	// The ARN of the IAM User Profile.
	Arn?: string
	// The group profile ID of the IAM User Profile.
	GroupProfileId?: string
	// The session name of the IAM User Profile.
	SessionName?: string
}

#SsoUserProfileDetails: {
	// The First Name of the IAM User Profile.
	FirstName?: string
	// The Last Name of the IAM User Profile.
	LastName?: string
	// The username of the SSO User Profile.
	Username?: string & =~"^[a-zA-Z_0-9+=,.@-]+$" & strings.MinRunes(1) & strings.MaxRunes(1024)
}

#UserProfileDetails: {
	Iam: #IamUserProfileDetails
} | {
	Sso: #SsoUserProfileDetails
}

#UserProfileStatus: "ASSIGNED" | "NOT_ASSIGNED" | "ACTIVATED" | "DEACTIVATED"

#UserProfileType: "IAM" | "SSO"

#UserType: "IAM_USER" | "IAM_ROLE" | "SSO_USER" | "IAM_ROLE_SESSION"
