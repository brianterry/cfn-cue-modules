package connection

#Properties: {
	CatalogId: string
	ConnectionInput: #ConnectionInput
}

#AuthenticationConfigurationInput: {
	AuthenticationType: string
	BasicAuthenticationCredentials?: #BasicAuthenticationCredentials
	CustomAuthenticationCredentials?: {...}
	KmsKeyArn?: string
	OAuth2Properties?: #OAuth2PropertiesInput
	SecretArn?: string
}

#AuthorizationCodeProperties: {
	AuthorizationCode?: string
	RedirectUri?: string
}

#BasicAuthenticationCredentials: {
	Password?: string
	Username?: string
}

#ConnectionInput: {
	AthenaProperties?: {...}
	AuthenticationConfiguration?: #AuthenticationConfigurationInput
	ConnectionProperties?: {...}
	ConnectionType: string
	Description?: string
	MatchCriteria?: [...string]
	Name?: string
	PhysicalConnectionRequirements?: #PhysicalConnectionRequirements
	PythonProperties?: {...}
	SparkProperties?: {...}
	ValidateCredentials?: bool
	ValidateForComputeEnvironments?: [...string]
}

#OAuth2ClientApplication: {
	AWSManagedClientApplicationReference?: string
	UserManagedClientApplicationClientId?: string
}

#OAuth2Credentials: {
	AccessToken?: string
	JwtToken?: string
	RefreshToken?: string
	UserManagedClientApplicationClientSecret?: string
}

#OAuth2PropertiesInput: {
	AuthorizationCodeProperties?: #AuthorizationCodeProperties
	OAuth2ClientApplication?: #OAuth2ClientApplication
	OAuth2Credentials?: #OAuth2Credentials
	OAuth2GrantType?: string
	TokenUrl?: string
	TokenUrlParametersMap?: {...}
}

#PhysicalConnectionRequirements: {
	AvailabilityZone?: string
	SecurityGroupIdList?: [...string]
	SubnetId?: string
}
