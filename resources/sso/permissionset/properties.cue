package permissionset

import "strings"

#Properties: {
	CustomerManagedPolicyReferences?: [...#CustomerManagedPolicyReference]
	// The permission set description.
	Description?: string & strings.MinRunes(1) & strings.MaxRunes(700)
	// The inline policy to put in permission set.
	InlinePolicy?: {...}
	// The sso instance arn that the permission set is owned.
	InstanceArn: string & =~"arn:aws(-[a-z]{1,5}){0,3}:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}" & strings.MinRunes(10) & strings.MaxRunes(1224)
	ManagedPolicies?: [...#ManagedPolicyArn]
	// The name you want to assign to this permission set.
	Name: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(32)
	PermissionsBoundary?: #PermissionsBoundary
	// The relay state URL that redirect links to any service in the AWS Management Console.
	RelayStateType?: string & =~"[a-zA-Z0-9&amp;$@#\\/%?=~\\-_'&quot;|!:,.;*+\\[\\]\\ \\(\\)\\{\\}]+" & strings.MinRunes(1) & strings.MaxRunes(240)
	// The length of time that a user can be signed in to an AWS account.
	SessionDuration?: string & =~"^(-?)P(?=\\d|T\\d)(?:(\\d+)Y)?(?:(\\d+)M)?(?:(\\d+)([DW]))?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+(?:\\.\\d+)?)S)?)?$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Tags?: [...#Tag]
}

#CustomerManagedPolicyReference: {
	Name: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Path?: string & =~"((/[A-Za-z0-9\\.,\\+@=_-]+)*)/" & strings.MinRunes(1) & strings.MaxRunes(512)
}

#ManagedPolicyArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)

#PermissionsBoundary: {
	CustomerManagedPolicyReference?: #CustomerManagedPolicyReference
	ManagedPolicyArn?: #ManagedPolicyArn
}

#Tag: {
	Key: string & =~"[\\w+=,.@-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"[\\w+=,.@-]+" & strings.MinRunes(0) & strings.MaxRunes(256)
}
