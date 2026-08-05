package rulegroup

import "strings"

#Properties: {
	Capacity: int & >=0
	CustomResponseBodies?: #CustomResponseBodies
	Description?: #EntityDescription
	MonetizationConfig?: #MonetizationConfig
	Name?: #EntityName
	// Collection of Rules.
	Rules?: [...#Rule]
	Scope: #Scope
	Tags?: [...#Tag]
	VisibilityConfig: #VisibilityConfig
}

#AllowAction: {
	CustomRequestHandling?: #CustomRequestHandling
}

#AndStatement: {
	Statements: [...#Statement]
}

#AsnMatchStatement: {
	AsnList?: [...int & >=0 & <=4294967295]
	ForwardedIPConfig?: #ForwardedIPConfiguration
}

#BlockAction: {
	CustomResponse?: #CustomResponse
}

#Body: {
	OversizeHandling?: #OversizeHandling
}

#ByteMatchStatement: {
	FieldToMatch: #FieldToMatch
	PositionalConstraint: #PositionalConstraint
	SearchString?: #SearchString
	SearchStringBase64?: #SearchStringBase64
	TextTransformations: [...#TextTransformation]
}

#CaptchaAction: {
	CustomRequestHandling?: #CustomRequestHandling
}

#CaptchaConfig: {
	ImmunityTimeProperty?: #ImmunityTimeProperty
}

#ChallengeAction: {
	CustomRequestHandling?: #CustomRequestHandling
}

#ChallengeConfig: {
	ImmunityTimeProperty?: #ImmunityTimeProperty
}

#CookieMatchPattern: {
	// Inspect all parts of the web request cookies.
	All?: {...}
	ExcludedCookies?: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(60)]
	IncludedCookies?: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(60)]
}

#Cookies: {
	MatchPattern: #CookieMatchPattern
	MatchScope: #MapMatchScope
	OversizeHandling: #OversizeHandling
}

#CountAction: {
	CustomRequestHandling?: #CustomRequestHandling
}

#CryptoConfig: {
	PaymentNetworks: #PaymentNetworks
}

#CustomHTTPHeader: {
	Name: #CustomHTTPHeaderName
	Value: #CustomHTTPHeaderValue
}

#CustomRequestHandling: {
	// Collection of HTTP headers.
	InsertHeaders: [...#CustomHTTPHeader]
}

#CustomResponse: {
	// Custom response body key.
	CustomResponseBodyKey?: string & =~"^[\\w\\-]+$"
	ResponseCode: #ResponseStatusCode
	// Collection of HTTP headers.
	ResponseHeaders?: [...#CustomHTTPHeader]
}

#CustomResponseBody: {
	Content: #ResponseContent
	ContentType: #ResponseContentType
}

#FieldToMatch: {
	// All query arguments of a web request.
	AllQueryArguments?: {...}
	Body?: #Body
	Cookies?: #Cookies
	HeaderOrder?: #HeaderOrder
	Headers?: #Headers
	JA3Fingerprint?: #JA3Fingerprint
	JA4Fingerprint?: #JA4Fingerprint
	JsonBody?: #JsonBody
	// The HTTP method of a web request. The method indicates the type of operation that the request is asking the origin to perform.
	Method?: {...}
	// The query string of a web request. This is the part of a URL that appears after a ? character, if any.
	QueryString?: {...}
	SingleHeader?: {
		Name: string
	}
	// One query argument in a web request, identified by name, for example UserName or SalesRegion. The name can be up to 30 characters long and isn't case sensitive.
	SingleQueryArgument?: {
		Name: string
	}
	UriFragment?: #UriFragment
	// The path component of the URI of a web request. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.
	UriPath?: {...}
}

#ForwardedIPConfiguration: {
	FallbackBehavior: "MATCH" | "NO_MATCH"
	HeaderName: string & =~"^[a-zA-Z0-9-]+{1,255}$"
}

#GeoMatchStatement: {
	CountryCodes?: [...string & strings.MinRunes(1) & strings.MaxRunes(2)]
	ForwardedIPConfig?: #ForwardedIPConfiguration
}

#HeaderMatchPattern: {
	// Inspect all parts of the web request headers.
	All?: {...}
	ExcludedHeaders?: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)]
	IncludedHeaders?: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)]
}

#HeaderOrder: {
	OversizeHandling: #OversizeHandling
}

#Headers: {
	MatchPattern: #HeaderMatchPattern
	MatchScope: #MapMatchScope
	OversizeHandling: #OversizeHandling
}

#IPSetForwardedIPConfiguration: {
	FallbackBehavior: "MATCH" | "NO_MATCH"
	HeaderName: string & =~"^[a-zA-Z0-9-]+{1,255}$"
	Position: "FIRST" | "LAST" | "ANY"
}

#IPSetReferenceStatement: {
	Arn: #ResourceArn
	IPSetForwardedIPConfig?: #IPSetForwardedIPConfiguration
}

#ImmunityTimeProperty: {
	ImmunityTime: int & >=60 & <=259200
}

#JA3Fingerprint: {
	FallbackBehavior: "MATCH" | "NO_MATCH"
}

#JA4Fingerprint: {
	FallbackBehavior: "MATCH" | "NO_MATCH"
}

#JsonBody: {
	InvalidFallbackBehavior?: #BodyParsingFallbackBehavior
	MatchPattern: #JsonMatchPattern
	MatchScope: #JsonMatchScope
	OversizeHandling?: #OversizeHandling
}

#JsonMatchPattern: {
	// Inspect all parts of the web request's JSON body.
	All?: {...}
	IncludedPaths?: [...#JsonPointerPath]
}

#Label: {
	Name: #LabelName
}

#LabelMatchStatement: {
	Key: #LabelMatchKey
	Scope: #LabelMatchScope
}

#LabelSummary: {
	Name?: #LabelName
}

#MonetizationConfig: {
	CryptoConfig?: #CryptoConfig
	CurrencyMode?: #CurrencyMode
}

#MonetizeAction: {
	PriceMultiplier?: #PriceMultiplier
}

#NotStatement: {
	Statement: #Statement
}

#OrStatement: {
	Statements: [...#Statement]
}

#PaymentNetwork: {
	Chain: #BlockchainChain
	Prices: #Prices
	WalletAddress: #WalletAddress
}

#Price: {
	Amount: #PriceAmount
	Currency: #CryptoCurrency
}

#RateBasedStatement: {
	AggregateKeyType: "IP" | "FORWARDED_IP" | "CONSTANT" | "CUSTOM_KEYS"
	// Specifies the aggregate keys to use in a rate-base rule.
	CustomKeys?: [...#RateBasedStatementCustomKey]
	EvaluationWindowSec?: #EvaluationWindowSec
	ForwardedIPConfig?: #ForwardedIPConfiguration
	Limit: #RateLimit
	ScopeDownStatement?: #Statement
}

#RateBasedStatementCustomKey: {
	ASN?: #RateLimitAsn
	Cookie?: #RateLimitCookie
	ForwardedIP?: #RateLimitForwardedIP
	HTTPMethod?: #RateLimitHTTPMethod
	Header?: #RateLimitHeader
	IP?: #RateLimitIP
	JA3Fingerprint?: #RateLimitJA3Fingerprint
	JA4Fingerprint?: #RateLimitJA4Fingerprint
	LabelNamespace?: #RateLimitLabelNamespace
	QueryArgument?: #RateLimitQueryArgument
	QueryString?: #RateLimitQueryString
	UriPath?: #RateLimitUriPath
}

#RateLimitCookie: {
	// The name of the cookie to use.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)
	TextTransformations: [...#TextTransformation]
}

#RateLimitHeader: {
	// The name of the header to use.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)
	TextTransformations: [...#TextTransformation]
}

#RateLimitJA3Fingerprint: {
	FallbackBehavior: "MATCH" | "NO_MATCH"
}

#RateLimitJA4Fingerprint: {
	FallbackBehavior: "MATCH" | "NO_MATCH"
}

#RateLimitLabelNamespace: {
	// The namespace to use for aggregation.
	Namespace: string & =~"^[0-9A-Za-z_:-]{1,1024}$"
}

#RateLimitQueryArgument: {
	// The name of the query argument to use.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)
	TextTransformations: [...#TextTransformation]
}

#RateLimitQueryString: {
	TextTransformations: [...#TextTransformation]
}

#RateLimitUriPath: {
	TextTransformations: [...#TextTransformation]
}

#RegexMatchStatement: {
	FieldToMatch: #FieldToMatch
	RegexString: string & strings.MinRunes(1) & strings.MaxRunes(512)
	TextTransformations: [...#TextTransformation]
}

#RegexPatternSetReferenceStatement: {
	Arn: #ResourceArn
	FieldToMatch: #FieldToMatch
	TextTransformations: [...#TextTransformation]
}

#Rule: {
	Action?: #RuleAction
	CaptchaConfig?: #CaptchaConfig
	ChallengeConfig?: #ChallengeConfig
	Name: #EntityName
	Priority: #RulePriority
	// Collection of Rule Labels.
	RuleLabels?: [...#Label]
	Statement: #Statement
	VisibilityConfig: #VisibilityConfig
}

#RuleAction: {
	Allow?: #AllowAction
	Block?: #BlockAction
	Captcha?: #CaptchaAction
	Challenge?: #ChallengeAction
	Count?: #CountAction
	Monetize?: #MonetizeAction
}

#RuleGroup: {
	Arn?: #ResourceArn
	Capacity?: int & >=0
	Description?: #EntityDescription
	Id?: #EntityId
	Name?: #EntityName
	// Collection of Rules.
	Rules?: [...#Rule]
	VisibilityConfig?: #VisibilityConfig
}

#SizeConstraintStatement: {
	ComparisonOperator: "EQ" | "NE" | "LE" | "LT" | "GE" | "GT"
	FieldToMatch: #FieldToMatch
	Size: number & >=0 & <=2.147483648e+10
	TextTransformations: [...#TextTransformation]
}

#SqliMatchStatement: {
	FieldToMatch: #FieldToMatch
	SensitivityLevel?: #SensitivityLevel
	TextTransformations: [...#TextTransformation]
}

#Statement: {
	AndStatement?: #AndStatement
	AsnMatchStatement?: #AsnMatchStatement
	ByteMatchStatement?: #ByteMatchStatement
	GeoMatchStatement?: #GeoMatchStatement
	IPSetReferenceStatement?: #IPSetReferenceStatement
	LabelMatchStatement?: #LabelMatchStatement
	NotStatement?: #NotStatement
	OrStatement?: #OrStatement
	RateBasedStatement?: #RateBasedStatement
	RegexMatchStatement?: #RegexMatchStatement
	RegexPatternSetReferenceStatement?: #RegexPatternSetReferenceStatement
	SizeConstraintStatement?: #SizeConstraintStatement
	SqliMatchStatement?: #SqliMatchStatement
	XssMatchStatement?: #XssMatchStatement
}

#Tag: {
	Key?: string & strings.MinRunes(1) & strings.MaxRunes(128)
	Value?: string & strings.MinRunes(0) & strings.MaxRunes(256)
}

#TextTransformation: {
	Priority: #TextTransformationPriority
	Type: #TextTransformationType
}

#UriFragment: {
	FallbackBehavior?: "MATCH" | "NO_MATCH"
}

#VisibilityConfig: {
	CloudWatchMetricsEnabled: bool
	MetricName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	SampledRequestsEnabled: bool
}

#XssMatchStatement: {
	FieldToMatch: #FieldToMatch
	TextTransformations: [...#TextTransformation]
}
