package userjourney

import "strings"

#Properties: {
	// The description of the user journey.
	Description?: string & strings.MaxRunes(500)
	// The name of the user journey.
	Name: string & =~"^[A-Za-z0-9][A-Za-z0-9 _\\-]{1,59}$"
	// The ARN of the resilience policy to associate with this user journey.
	PolicyArn?: string & =~"^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+.-]{0,1023}$"
	// The system ARN or system ID that owns this user journey.
	SystemIdentifier: string & strings.MinRunes(1) & strings.MaxRunes(2048)
}
