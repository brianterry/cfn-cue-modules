package basepathmappingv2

#Properties: {
	// The base path name that callers of the API must provide in the URL after the domain name.
	BasePath?: string
	// The Arn of an AWS::ApiGateway::DomainNameV2 resource.
	DomainNameArn: string
	// The ID of the API.
	RestApiId: string
	// The name of the API's stage.
	Stage?: string
}
