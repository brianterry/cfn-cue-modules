package workspace

import "strings"

#Properties: {
	AccountAccessType: #AccountAccessType
	// List of authentication providers to enable.
	AuthenticationProviders: [...#AuthenticationProviderTypes]
	// A unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
	ClientToken?: string & =~"^[!-~]{1,64}$"
	// List of data sources on the service managed IAM role.
	DataSources?: [...#DataSourceType]
	// Description of a workspace.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(2048)
	// The version of Grafana to support in your workspace.
	GrafanaVersion?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The user friendly name of a workspace.
	Name?: string & =~"^[a-zA-Z0-9-._~]{1,255}$"
	NetworkAccessControl?: #NetworkAccessControl
	// List of notification destinations on the customers service managed IAM role that the Grafana workspace can query.
	NotificationDestinations?: [...#NotificationDestinationType]
	// The name of an IAM role that already exists to use with AWS Organizations to access AWS data sources and notification channels in other accounts in an organization.
	OrganizationRoleName?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// List of Organizational Units containing AWS accounts the Grafana workspace can pull data from.
	OrganizationalUnits?: [...string]
	PermissionType: #PermissionType
	// Allow workspace admins to install plugins
	PluginAdminEnabled?: bool
	// IAM Role that will be used to grant the Grafana workspace access to a customers AWS resources.
	RoleArn?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	SamlConfiguration?: #SamlConfiguration
	// The name of the AWS CloudFormation stack set to use to generate IAM roles to be used for this workspace.
	StackSetName?: string
	// The list of tags associated with the workspace.
	Tags?: [...{
		Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
	VpcConfiguration?: #VpcConfiguration
}

#AssertionAttributes: {
	// Name of the attribute within the SAML assert to use as the users email in Grafana.
	Email?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of the attribute within the SAML assert to use as the users groups in Grafana.
	Groups?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of the attribute within the SAML assert to use as the users login handle in Grafana.
	Login?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of the attribute within the SAML assert to use as the users name in Grafana.
	Name?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of the attribute within the SAML assert to use as the users organizations in Grafana.
	Org?: string & strings.MinRunes(1) & strings.MaxRunes(256)
	// Name of the attribute within the SAML assert to use as the users roles in Grafana.
	Role?: string & strings.MinRunes(1) & strings.MaxRunes(256)
}

#IdpMetadata: {
	// URL that vends the IdPs metadata.
	Url?: string & strings.MinRunes(1) & strings.MaxRunes(2048)
	// XML blob of the IdPs metadata.
	Xml?: string
}

#NetworkAccessControl: {
	// The list of prefix list IDs. A prefix list is a list of CIDR ranges of IP addresses. The IP addresses specified are allowed to access your workspace. If the list is not included in the configuration then no IP addresses will be allowed to access the workspace.
	PrefixListIds?: [...string & strings.MinRunes(1)]
	// The list of Amazon VPC endpoint IDs for the workspace. If a NetworkAccessConfiguration is specified then only VPC endpoints specified here will be allowed to access the workspace.
	VpceIds?: [...string & strings.MinRunes(1)]
}

#RoleValues: {
	// List of SAML roles which will be mapped into the Grafana Admin role.
	Admin?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	// List of SAML roles which will be mapped into the Grafana Editor role.
	Editor?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
}

#SamlConfiguration: {
	// List of SAML organizations allowed to access Grafana.
	AllowedOrganizations?: [...string & strings.MinRunes(1) & strings.MaxRunes(256)]
	AssertionAttributes?: #AssertionAttributes
	IdpMetadata: #IdpMetadata
	// The maximum lifetime an authenticated user can be logged in (in minutes) before being required to re-authenticate.
	LoginValidityDuration?: number
	RoleValues?: #RoleValues
}

#VpcConfiguration: {
	// The list of Amazon EC2 security group IDs attached to the Amazon VPC for your Grafana workspace to connect.
	SecurityGroupIds: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	// The list of Amazon EC2 subnet IDs created in the Amazon VPC for your Grafana workspace to connect.
	SubnetIds: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
}
