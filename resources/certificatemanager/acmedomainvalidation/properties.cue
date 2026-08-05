package acmedomainvalidation

import "strings"

#Properties: {
	// The ARN of the ACME endpoint this domain validation is associated with.
	AcmeEndpointArn: string
	// The domain name to validate.
	DomainName: string
	PrevalidationOptions: #PrevalidationOptions
	// Tags associated with the domain validation.
	Tags?: [...{
		Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
		Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
	}]
}

#DnsPrevalidationOptions: {
	DomainScope?: #DomainScope
	// The Route 53 hosted zone ID for automatic DNS record management. When provided, the service creates the validation DNS record on the customer's behalf.
	HostedZoneId?: string
}

#DomainScope: {
	// Whether certificates may be issued for the exact domain.
	ExactDomain?: string
	// Whether certificates may be issued for subdomains of the domain.
	Subdomains?: string
	// Whether wildcard certificates may be issued for the domain.
	Wildcards?: string
}

#PrevalidationOptions: {
	DnsPrevalidation: #DnsPrevalidationOptions
}

#Tag: {
	// The key name of the tag.
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// The value for the tag.
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
