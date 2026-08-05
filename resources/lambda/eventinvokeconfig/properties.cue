package eventinvokeconfig

import "strings"

#Properties: {
	DestinationConfig?: #DestinationConfig
	// The name of the Lambda function.
	FunctionName: string & =~"^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]+(-[a-z]+)+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:(\\$LATEST(\\.PUBLISHED)?|[a-zA-Z0-9-_]+))?$"
	// The maximum age of a request that Lambda sends to a function for processing.
	MaximumEventAgeInSeconds?: int & >=60 & <=21600
	// The maximum number of times to retry when the function returns an error.
	MaximumRetryAttempts?: int & >=0 & <=2
	// The identifier of a version or alias.
	Qualifier: string & =~"^\\$(LATEST(\\.PUBLISHED)?)|[a-zA-Z0-9$_-]{1,129}$"
}

#DestinationConfig: {
	OnFailure?: #OnFailure
	OnSuccess?: #OnSuccess
}

#OnFailure: {
	// The Amazon Resource Name (ARN) of the destination resource.
	Destination: string & =~"^$|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]+(-[a-z]+)+-\\d{1})?:(\\d{12})?:(.*)" & strings.MinRunes(0) & strings.MaxRunes(350)
}

#OnSuccess: {
	// The Amazon Resource Name (ARN) of the destination resource.
	Destination: string & =~"^$|arn:(aws[a-zA-Z0-9-]*):([a-zA-Z0-9\\-])+:([a-z]+(-[a-z]+)+-\\d{1})?:(\\d{12})?:(.*)" & strings.MinRunes(0) & strings.MaxRunes(350)
}
