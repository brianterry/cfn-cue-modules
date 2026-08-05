package webapp

import "strings"

#Properties: {
	// The AccessEndpoint is the URL that you provide to your users for them to interact with the Transfer Family web app. You can specify a custom URL or use the default value.
	AccessEndpoint?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
	EndpointDetails?: #EndpointDetails
	// Key-value pairs that can be used to group and search for web apps.
	Tags?: [...#Tag]
	WebAppCustomization?: #WebAppCustomization
	WebAppEndpointPolicy?: #WebAppEndpointPolicy
	WebAppUnits?: #WebAppUnits
}

#EndpointDetails: {
	Vpc?: #Vpc
}

#IdentityProviderDetails: {
	ApplicationArn?: string & =~"^arn:[\\w-]+:sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The Amazon Resource Name (ARN) for the IAM Identity Center used for the web app.
	InstanceArn?: string & =~"^arn:[\\w-]+:sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The IAM role in IAM Identity Center used for the web app.
	Role?: string & =~"^arn:[a-z-]+:iam::[0-9]{12}:role[:/]\\S+$" & strings.MinRunes(20) & strings.MaxRunes(2048)
}

#Tag: {
	Key: string & strings.MinRunes(0) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#Vpc: {
	// The IP address type for the VPC endpoint used by the web app.
	IpAddressType?: "IPV4" | "DUALSTACK"
	SecurityGroupIds?: [...string & =~"^sg-[0-9a-f]{8,17}$" & strings.MinRunes(11) & strings.MaxRunes(20)]
	SubnetIds?: [...string & =~"^subnet-[0-9a-f]{8,17}$" & strings.MinRunes(15) & strings.MaxRunes(24)]
	VpcId?: string & =~"^vpc-[0-9a-f]{8,17}$" & strings.MinRunes(12) & strings.MaxRunes(21)
}

#WebAppCustomization: {
	// Specifies a favicon to display in the browser tab.
	FaviconFile?: string & strings.MinRunes(1) & strings.MaxRunes(20960)
	// Specifies a logo to display on the web app.
	LogoFile?: string & strings.MinRunes(1) & strings.MaxRunes(51200)
	// Specifies a title to display on the web app.
	Title?: string & strings.MinRunes(0) & strings.MaxRunes(100)
}

#WebAppEndpointPolicy: "STANDARD" | "FIPS"

#WebAppUnits: {
	Provisioned: int & >=1
}
