package identitycenterconfiguration

import "strings"

#Properties: {
	// The IAM identity center instance arn
	InstanceArn: string & =~"^arn:(aws|aws-us-gov|aws-cn|aws-iso|aws-iso-b):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$" & strings.MinRunes(10) & strings.MaxRunes(1224)
	// The downstream scopes that Glue identity center configuration can access
	Scopes?: [...string]
	// Enable or disable user background sessions for Glue Identity Center
	UserBackgroundSessionsEnabled?: bool
}
