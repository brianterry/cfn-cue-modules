package actionconnector

import "strings"

#Properties: {
	ActionConnectorId: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(512)
	AuthenticationConfig: #AuthConfig
	AwsAccountId: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	Description?: string & =~"^[A-Za-z0-9 _.,!?-]*$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	Name: string & =~"^[A-Za-z0-9](?:[\\w- ]*[A-Za-z0-9])?$" & strings.MinRunes(1) & strings.MaxRunes(255)
	Permissions?: [...#ResourcePermission]
	Tags?: [...#Tag]
	Type: #ActionConnectorType
	VpcConnectionArn?: string
}

#APIKeyConnectionMetadata: {
	ApiKey: string
	BaseEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
	Email?: string & =~"^[\\w.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
}

#AuthConfig: {
	AuthenticationMetadata: #AuthenticationMetadata
	AuthenticationType: #ConnectionAuthType
}

#AuthorizationCodeGrantDetails: {
	AuthorizationEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
	ClientId: string & strings.MaxRunes(1024)
	ClientSecret: string & strings.MaxRunes(2048)
	TokenEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
}

#AuthorizationCodeGrantMetadata: {
	AuthorizationCodeGrantCredentialsDetails?: #AuthorizationCodeGrantCredentialsDetails
	AuthorizationCodeGrantCredentialsSource?: #AuthorizationCodeGrantCredentialsSource
	BaseEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
	RedirectUrl: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
}

#BasicAuthConnectionMetadata: {
	BaseEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
	Password: string
	Username: string
}

#ClientCredentialsGrantDetails: {
	ClientId: string & strings.MaxRunes(1024)
	ClientSecret: string & strings.MaxRunes(2048)
	TokenEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
}

#ClientCredentialsGrantMetadata: {
	BaseEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
	ClientCredentialsDetails?: #ClientCredentialsDetails
	ClientCredentialsSource?: #ClientCredentialsSource
}

#IAMConnectionMetadata: {
	RoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#NoneConnectionMetadata: {
	BaseEndpoint: string & =~"^https://.*" & strings.MinRunes(1) & strings.MaxRunes(8192)
}

#ResourcePermission: {
	// <p>The IAM action to grant or revoke permissions on.</p>
	Actions: [...string]
	// <p>The Amazon Resource Name (ARN) of the principal. This can be one of the
	// following:</p>
	// <ul>
	// <li>
	// <p>The ARN of an Amazon QuickSight user or group associated with a data source or dataset. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon QuickSight user, group, or namespace associated with an analysis, dashboard, template, or theme. (This is common.)</p>
	// </li>
	// <li>
	// <p>The ARN of an Amazon Web Services account root: This is an IAM ARN rather than a QuickSight
	// ARN. Use this option only to share resources (templates) across Amazon Web Services accounts.
	// (This is less common.) </p>
	// </li>
	// </ul>
	Principal: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#Tag: {
	// <p>Tag key.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>Tag value.</p>
	Value: string & strings.MinRunes(1) & strings.MaxRunes(256)
}
