package connection

import "strings"

#Properties: {
	AuthorizationType?: "API_KEY" | "BASIC" | "OAUTH_CLIENT_CREDENTIALS"
	// Description of the connection.
	Description?: string & strings.MaxRunes(512)
	KmsKeyIdentifier?: string & =~"^[a-zA-Z0-9_\\-/:]*$" & strings.MaxRunes(2048)
	// Name of the connection.
	Name?: string & =~"[\\.\\-_A-Za-z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#ApiKeyAuthParameters: {
	ApiKeyName: string & =~"^[ \\t]*[^\\x00-\\x1F\\x7F]+([ \\t]+[^\\x00-\\x1F\\x7F]+)*[ \\t]*$"
	ApiKeyValue: string & =~"^[ \\t]*[^\\x00-\\x1F\\x7F]+([ \\t]+[^\\x00-\\x1F\\x7F]+)*[ \\t]*$"
}

#AuthParameters: {
	ApiKeyAuthParameters?: #ApiKeyAuthParameters
	BasicAuthParameters?: #BasicAuthParameters
	ConnectivityParameters?: #ConnectivityParameters
	InvocationHttpParameters?: #ConnectionHttpParameters
	OAuthParameters?: #OAuthParameters
}

#BasicAuthParameters: {
	Password: string & =~"^[ \\t]*[^\\x00-\\x1F\\x7F]+([ \\t]+[^\\x00-\\x1F\\x7F]+)*[ \\t]*$"
	Username: string & =~"^[ \\t]*[^\\x00-\\x1F\\x7F]+([ \\t]+[^\\x00-\\x1F\\x7F]+)*[ \\t]*$"
}

#ClientParameters: {
	ClientID: string & =~"^[ \\t]*[^\\x00-\\x1F\\x7F]+([ \\t]+[^\\x00-\\x1F\\x7F]+)*[ \\t]*$"
	ClientSecret: string & =~"^[ \\t]*[^\\x00-\\x1F\\x7F]+([ \\t]+[^\\x00-\\x1F\\x7F]+)*[ \\t]*$"
}

#ConnectionHttpParameters: {
	BodyParameters?: [...#Parameter]
	HeaderParameters?: [...#Parameter]
	QueryStringParameters?: [...#Parameter]
}

#ConnectivityParameters: {
	ResourceParameters: #ResourceParameters
}

#OAuthParameters: {
	AuthorizationEndpoint: string & =~"^((%[0-9A-Fa-f]{2}|[-()_.!~*';/?:@\\x26=+$,A-Za-z0-9])+)([).!';/?:,])?$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	ClientParameters: #ClientParameters
	HttpMethod: "GET" | "POST" | "PUT"
	OAuthHttpParameters?: #ConnectionHttpParameters
}

#Parameter: {
	IsValueSecret?: bool
	Key: string
	Value: string
}

#ResourceParameters: {
	ResourceAssociationArn?: string & =~"^arn:[a-z0-9\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:servicenetworkresourceassociation/snra-[0-9a-z]{17}$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	ResourceConfigurationArn: string & =~"^arn:[a-z0-9f\\-]+:vpc-lattice:[a-zA-Z0-9\\-]+:\\d{12}:resourceconfiguration/rcfg-[0-9a-z]{17}$" & strings.MaxRunes(2048)
}
