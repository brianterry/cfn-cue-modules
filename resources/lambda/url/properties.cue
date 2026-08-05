package url

import "strings"

#Properties: {
	// Can be either AWS_IAM if the requests are authorized via IAM, or NONE if no authorization is configured on the Function URL.
	AuthType: "AWS_IAM" | "NONE"
	Cors?: #Cors
	// The invocation mode for the function's URL. Set to BUFFERED if you want to buffer responses before returning them to the client. Set to RESPONSE_STREAM if you want to stream responses, allowing faster time to first byte and larger response payload sizes. If not set, defaults to BUFFERED.
	InvokeMode?: "BUFFERED" | "RESPONSE_STREAM"
	// The alias qualifier for the target function. If TargetFunctionArn is unqualified then Qualifier must be passed.
	Qualifier?: string & =~"((?!^[0-9]+$)([a-zA-Z0-9-_]+))" & strings.MinRunes(1) & strings.MaxRunes(128)
	// The Amazon Resource Name (ARN) of the function associated with the Function URL.
	TargetFunctionArn: string & =~"^(arn:(aws[a-zA-Z-]*)?:lambda:)?([a-z]{2}((-gov)|(-iso(b?)))?-[a-z]+-\\d{1}:)?(\\d{12}:)?(function:)?([a-zA-Z0-9-_]+)(:((?!\\d+)[0-9a-zA-Z-_]+))?$"
}

#AllowHeaders: [...string & strings.MinRunes(1) & strings.MaxRunes(1024)]

#AllowMethods: [..."GET" | "PUT" | "HEAD" | "POST" | "PATCH" | "DELETE" | "*"]

#AllowOrigins: [...string & strings.MinRunes(1) & strings.MaxRunes(253)]

#Cors: {
	// Specifies whether credentials are included in the CORS request.
	AllowCredentials?: bool
	// Represents a collection of allowed headers.
	AllowHeaders?: #AllowHeaders
	// Represents a collection of allowed HTTP methods.
	AllowMethods?: #AllowMethods
	// Represents a collection of allowed origins.
	AllowOrigins?: #AllowOrigins
	// Represents a collection of exposed headers.
	ExposeHeaders?: #ExposeHeaders
	MaxAge?: int & >=0 & <=86400
}

#ExposeHeaders: [...string & strings.MinRunes(1) & strings.MaxRunes(1024)]
