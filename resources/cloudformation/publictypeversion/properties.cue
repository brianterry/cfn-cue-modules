package publictypeversion

import "strings"

#Properties: {
	// The Amazon Resource Number (ARN) of the extension.
	Arn?: string & =~"arn:aws[A-Za-z0-9-]{0,64}:cloudformation:[A-Za-z0-9-]{1,64}:[0-9]{12}:type/.+"
	// A url to the S3 bucket where logs for the testType run will be available
	LogDeliveryBucket?: string
	// The version number of a public third-party extension
	PublicVersionNumber?: string & strings.MinRunes(5) & strings.MaxRunes(64)
	// The kind of extension
	Type?: "RESOURCE" | "MODULE" | "HOOK"
	// The name of the type being registered.
	// We recommend that type names adhere to the following pattern: company_or_organization::service::type.
	TypeName?: string & =~"[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}::[A-Za-z0-9]{2,64}(::MODULE){0,1}"
}
