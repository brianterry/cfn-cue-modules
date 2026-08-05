package authorizer

import "strings"

#Properties: {
	AuthorizerFunctionArn: string
	AuthorizerName?: string & =~"[\\w=,@-]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	EnableCachingForHttp?: bool
	SigningDisabled?: bool
	Status?: "ACTIVE" | "INACTIVE"
	Tags?: [...#Tag]
	TokenKeyName?: string
	TokenSigningPublicKeys?: {...}
}

#Tag: {
	Key: string
	Value: string
}
