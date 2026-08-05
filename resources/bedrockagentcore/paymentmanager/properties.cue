package paymentmanager

import "strings"

#Properties: {
	AuthorizerConfiguration?: #AuthorizerConfiguration
	AuthorizerType: #PaymentsAuthorizerType
	// A description of the payment manager
	Description?: string & =~"^[a-zA-Z0-9\\s]+$" & strings.MinRunes(1) & strings.MaxRunes(4096)
	// The name of the payment manager
	Name: string & =~"^[a-zA-Z][a-zA-Z0-9]{0,47}$"
	// The ARN of the IAM role for the payment manager
	RoleArn: string & =~"^arn:aws(-[^:]+)?:iam::([0-9]{12})?:role/.+$" & strings.MinRunes(1) & strings.MaxRunes(2048)
	// Tags to assign to the payment manager
	Tags?: [...#Tag]
}

#AuthorizerConfiguration: {
	CustomJWTAuthorizer: #CustomJWTAuthorizerConfiguration
}

#AuthorizingClaimMatchValueType: {
	ClaimMatchOperator: "EQUALS" | "CONTAINS" | "CONTAINS_ANY"
	ClaimMatchValue: #ClaimMatchValueType
}

#ClaimMatchValueType: {
	MatchValueString?: string & =~"^[A-Za-z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	MatchValueStringList?: [...string & =~"^[A-Za-z0-9_.-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)]
}

#CustomClaimValidationType: {
	AuthorizingClaimMatchValue: #AuthorizingClaimMatchValueType
	InboundTokenClaimName: string & =~"^[A-Za-z0-9_.:/-]+$" & strings.MinRunes(1) & strings.MaxRunes(255)
	InboundTokenClaimValueType: "STRING" | "STRING_ARRAY"
}

#CustomJWTAuthorizerConfiguration: {
	AllowedAudience?: [...string]
	AllowedClients?: [...string]
	AllowedScopes?: [...string & strings.MinRunes(1) & strings.MaxRunes(255)]
	CustomClaims?: [...#CustomClaimValidationType]
	DiscoveryUrl: string & =~"^.+/\\.well-known/openid-configuration$"
}

#PaymentManagerStatus: "CREATING" | "UPDATING" | "DELETING" | "READY" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED"

#PaymentsAuthorizerType: "CUSTOM_JWT" | "AWS_IAM"

#Tag: {
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#WorkloadIdentityDetails: {
	WorkloadIdentityArn: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
