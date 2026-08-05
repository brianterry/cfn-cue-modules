package originendpointpolicy

import "strings"

#Properties: {
	CdnAuthConfiguration?: #CdnAuthConfiguration
	ChannelGroupName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	ChannelName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	OriginEndpointName: string & =~"^[a-zA-Z0-9_-]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
	Policy: {...}
}

#CdnAuthConfiguration: {
	// <p>The ARN for the secret in Secrets Manager that your CDN uses for authorization to access the endpoint.</p>
	CdnIdentifierSecretArns: [...string & strings.MinRunes(20) & strings.MaxRunes(2048)]
	// <p>The ARN for the IAM role that gives MediaPackage read access to Secrets Manager and KMS for CDN authorization.</p>
	SecretsRoleArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)
}
