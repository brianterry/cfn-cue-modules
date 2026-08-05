package webacl

import "strings"

#Properties: {
	// Collection of application attributes.
	ApplicationConfig?: #ApplicationConfig
	AssociationConfig?: #AssociationConfig
	CaptchaConfig?: #CaptchaConfig
	ChallengeConfig?: #ChallengeConfig
	CustomResponseBodies?: #CustomResponseBodies
	// Collection of dataProtects.
	DataProtectionConfig?: #DataProtectionConfig
	DefaultAction: #DefaultAction
	Description?: #EntityDescription
	MonetizationConfig?: #MonetizationConfig
	Name?: #EntityName
	OnSourceDDoSProtectionConfig?: #OnSourceDDoSProtectionConfig
	// Collection of Rules.
	Rules?: [...#Rule]
	Scope: #Scope
	Tags?: [...#Tag]
	TokenDomains?: #TokenDomains
	VisibilityConfig: #VisibilityConfig
}

#AWSManagedRulesACFPRuleSet: {
	CreationPath: string
	EnableRegexInPath?: bool
	RegistrationPagePath: string
	RequestInspection: #RequestInspectionACFP
	ResponseInspection?: #ResponseInspection
}

#AWSManagedRulesATPRuleSet: {
	EnableRegexInPath?: bool
	LoginPath: string
	RequestInspection?: #RequestInspection
	ResponseInspection?: #ResponseInspection
}

#AWSManagedRulesAntiDDoSRuleSet: {
	ClientSideActionConfig: #ClientSideActionConfig
	SensitivityToBlock?: #SensitivityToAct
}

#AWSManagedRulesBotControlRuleSet: {
	EnableMachineLearning?: bool
	InspectionLevel: "COMMON" | "TARGETED"
}

#AddressField: #FieldIdentifier

#AllowAction: {
	CustomRequestHandling?: #CustomRequestHandling
}

#AndStatement: {
	Statements: [...#Statement]
}

#ApplicationAttribute: {
	Name: #AttributeName
	Values: #AttributeValues
}

#ApplicationAttributes: [...#ApplicationAttribute]

#ApplicationConfig: {
	Attributes: #ApplicationAttributes
}

#AsnMatchStatement: {
	AsnList?: [...int & >=0 & <=4294967295]
	ForwardedIPConfig?: #ForwardedIPConfiguration
}

#AssociationConfig: {
	RequestBody?: #RequestBody
}

#AttributeName: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)

#AttributeValue: string & =~"^[\\w\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(64)

#AttributeValues: [...#AttributeValue]

#BlockAction: {
	CustomResponse?: #CustomResponse
}

#BlockchainChain: "BASE" | "SOLANA" | "BASE_SEPOLIA" | "SOLANA_DEVNET"

#Body: {
	OversizeHandling?: #OversizeHandling
}

#BodyParsingFallbackBehavior: "MATCH" | "NO_MATCH" | "EVALUATE_AS_STRING"

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

#ClientSideAction: {
	ExemptUriRegularExpressions?: #RegularExpressionList
	Sensitivity?: #SensitivityToAct
	UsageOfAction: #UsageOfAction
}

#ClientSideActionConfig: {
	Challenge: #ClientSideAction
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

#CryptoCurrency: "USDC"

#CurrencyMode: "REAL" | "TEST"

#CustomHTTPHeader: {
	Name: #CustomHTTPHeaderName
	Value: #CustomHTTPHeaderValue
}

#CustomHTTPHeaderName: string & strings.MinRunes(1) & strings.MaxRunes(64)

#CustomHTTPHeaderValue: string & strings.MinRunes(1) & strings.MaxRunes(255)

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

#CustomResponseBodies: {...}

#CustomResponseBody: {
	Content: #ResponseContent
	ContentType: #ResponseContentType
}

#DataProtect: {
	Action: #DataProtectionAction
	ExcludeRateBasedDetails?: bool
	ExcludeRuleMatchDetails?: bool
	Field: #FieldToProtect
}

#DataProtectionAction: "SUBSTITUTION" | "HASH"

#DataProtectionConfig: {
	DataProtections: #DataProtections
}

#DataProtections: [...#DataProtect]

#DefaultAction: {
	Allow?: #AllowAction
	Block?: #BlockAction
}

#EntityDescription: string & =~"^[a-zA-Z0-9=:#@/\\-,.][a-zA-Z0-9+=:#@/\\-,.\\s]+[a-zA-Z0-9+=:#@/\\-,.]{1,256}$"

#EntityId: string & =~"^[0-9a-f]{8}-(?:[0-9a-f]{4}-){3}[0-9a-f]{12}$"

#EntityName: string & =~"^[0-9A-Za-z_-]{1,128}$"

#EvaluationWindowSec: int

#ExcludedRule: {
	Name: #EntityName
}

#ExcludedRules: [...#ExcludedRule]

#FieldIdentifier: {
	Identifier: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(512)
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

#FieldToProtect: {
	// List of field keys to protect
	FieldKeys?: [...#FieldToProtectKeyName]
	// Field type to protect
	FieldType: "SINGLE_HEADER" | "SINGLE_COOKIE" | "SINGLE_QUERY_ARGUMENT" | "QUERY_STRING" | "BODY"
}

#FieldToProtectKeyName: string & strings.MinRunes(1) & strings.MaxRunes(64)

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

#JsonMatchScope: "ALL" | "KEY" | "VALUE"

#JsonPointerPath: string & =~"^[\\/]+([^~]*(~[01])*)*{1,512}$"

#Label: {
	Name: #LabelName
}

#LabelMatchKey: string & =~"^[0-9A-Za-z_:-]{1,1024}$"

#LabelMatchScope: "LABEL" | "NAMESPACE"

#LabelMatchStatement: {
	Key: #LabelMatchKey
	Scope: #LabelMatchScope
}

#LabelName: string & =~"^[0-9A-Za-z_:-]{1,1024}$"

#ManagedRuleGroupConfig: {
	AWSManagedRulesACFPRuleSet?: #AWSManagedRulesACFPRuleSet
	AWSManagedRulesATPRuleSet?: #AWSManagedRulesATPRuleSet
	AWSManagedRulesAntiDDoSRuleSet?: #AWSManagedRulesAntiDDoSRuleSet
	AWSManagedRulesBotControlRuleSet?: #AWSManagedRulesBotControlRuleSet
	LoginPath?: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(256)
	PasswordField?: #FieldIdentifier
	PayloadType?: "JSON" | "FORM_ENCODED"
	UsernameField?: #FieldIdentifier
}

#ManagedRuleGroupStatement: {
	ExcludedRules?: [...#ExcludedRule]
	// Collection of ManagedRuleGroupConfig.
	ManagedRuleGroupConfigs?: [...#ManagedRuleGroupConfig]
	Name: #EntityName
	// Action overrides for rules in the rule group.
	RuleActionOverrides?: [...#RuleActionOverride]
	ScopeDownStatement?: #Statement
	VendorName: string
	Version?: string & =~"^[\\w#:\\.\\-/]+$" & strings.MinRunes(1) & strings.MaxRunes(64)
}

#MapMatchScope: "ALL" | "KEY" | "VALUE"

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

#OnSourceDDoSProtectionConfig: {
	ALBLowReputationMode: "ACTIVE_UNDER_DDOS" | "ALWAYS_ON"
}

#OrStatement: {
	Statements: [...#Statement]
}

#OverrideAction: {
	// Count traffic towards application.
	Count?: {...}
	// Keep the RuleGroup or ManagedRuleGroup behavior as is.
	None?: {...}
}

#OversizeHandling: "CONTINUE" | "MATCH" | "NO_MATCH"

#PaymentNetwork: {
	Chain: #BlockchainChain
	Prices: #Prices
	WalletAddress: #WalletAddress
}

#PaymentNetworks: [...#PaymentNetwork]

#PhoneNumberField: #FieldIdentifier

#PositionalConstraint: "EXACTLY" | "STARTS_WITH" | "ENDS_WITH" | "CONTAINS" | "CONTAINS_WORD"

#Price: {
	Amount: #PriceAmount
	Currency: #CryptoCurrency
}

#PriceAmount: string & =~"^([1-9][0-9]*(\\.[0-9]{1,3})?|0\\.([1-9][0-9]{0,2}|0[1-9][0-9]?|00[1-9]))$" & strings.MinRunes(1) & strings.MaxRunes(13)

#PriceMultiplier: string & =~"^([1-9][0-9]?|100)$" & strings.MinRunes(1) & strings.MaxRunes(3)

#Prices: [...#Price]

#QueryString: {...}

#RateBasedStatement: {
	AggregateKeyType: "CONSTANT" | "IP" | "FORWARDED_IP" | "CUSTOM_KEYS"
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

#RateLimit: int & >=10 & <=2000000000

#RateLimitAsn: {...}

#RateLimitCookie: {
	// The name of the cookie to use.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)
	TextTransformations: [...#TextTransformation]
}

#RateLimitForwardedIP: {...}

#RateLimitHTTPMethod: {...}

#RateLimitHeader: {
	// The name of the header to use.
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(64)
	TextTransformations: [...#TextTransformation]
}

#RateLimitIP: {...}

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

#Regex: {
	RegexString?: #RegexPatternString
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

#RegexPatternString: string & strings.MinRunes(1) & strings.MaxRunes(512)

#RegularExpressionList: [...#Regex]

#RequestBody: {...}

#RequestBodyAssociatedResourceTypeConfig: {
	DefaultSizeInspectionLimit: #SizeInspectionLimit
}

#RequestInspection: {
	PasswordField: #FieldIdentifier
	PayloadType: "JSON" | "FORM_ENCODED"
	UsernameField: #FieldIdentifier
}

#RequestInspectionACFP: {
	AddressFields?: [...#AddressField]
	EmailField?: #FieldIdentifier
	PasswordField?: #FieldIdentifier
	PayloadType: "JSON" | "FORM_ENCODED"
	PhoneNumberFields?: [...#PhoneNumberField]
	UsernameField?: #FieldIdentifier
}

#ResourceArn: string & strings.MinRunes(20) & strings.MaxRunes(2048)

#ResponseContent: string & strings.MinRunes(1) & strings.MaxRunes(10240)

#ResponseContentType: "TEXT_PLAIN" | "TEXT_HTML" | "APPLICATION_JSON"

#ResponseInspection: {
	BodyContains?: #ResponseInspectionBodyContains
	Header?: #ResponseInspectionHeader
	Json?: #ResponseInspectionJson
	StatusCode?: #ResponseInspectionStatusCode
}

#ResponseInspectionBodyContains: {
	FailureStrings: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(100)]
	SuccessStrings: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(100)]
}

#ResponseInspectionHeader: {
	FailureValues: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(100)]
	Name: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(200)
	SuccessValues: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(100)]
}

#ResponseInspectionJson: {
	FailureValues: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(100)]
	Identifier: string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(512)
	SuccessValues: [...string & =~".*\\S.*" & strings.MinRunes(1) & strings.MaxRunes(100)]
}

#ResponseInspectionStatusCode: {
	FailureCodes: [...int]
	SuccessCodes: [...int]
}

#ResponseStatusCode: int & >=200 & <=599

#Rule: {
	Action?: #RuleAction
	CaptchaConfig?: #CaptchaConfig
	ChallengeConfig?: #ChallengeConfig
	Name: #EntityName
	OverrideAction?: #OverrideAction
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

#RuleActionOverride: {
	ActionToUse: #RuleAction
	Name: #EntityName
}

#RuleGroupReferenceStatement: {
	Arn: #ResourceArn
	ExcludedRules?: [...#ExcludedRule]
	// Action overrides for rules in the rule group.
	RuleActionOverrides?: [...#RuleActionOverride]
}

#RulePriority: int & >=0

#Rules: [...#Rule]

#Scope: "CLOUDFRONT" | "REGIONAL"

#SearchString: string

#SearchStringBase64: string

#SensitivityLevel: "LOW" | "HIGH"

#SensitivityToAct: "LOW" | "MEDIUM" | "HIGH"

#SingleHeader: {
	Name?: string
}

#SingleQueryArgument: {
	Name?: string
}

#SizeConstraintStatement: {
	ComparisonOperator: "EQ" | "NE" | "LE" | "LT" | "GE" | "GT"
	FieldToMatch: #FieldToMatch
	Size: number & >=0 & <=2.147483648e+10
	TextTransformations: [...#TextTransformation]
}

#SizeInspectionLimit: "KB_16" | "KB_32" | "KB_48" | "KB_64"

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
	ManagedRuleGroupStatement?: #ManagedRuleGroupStatement
	NotStatement?: #NotStatement
	OrStatement?: #OrStatement
	RateBasedStatement?: #RateBasedStatement
	RegexMatchStatement?: #RegexMatchStatement
	RegexPatternSetReferenceStatement?: #RegexPatternSetReferenceStatement
	RuleGroupReferenceStatement?: #RuleGroupReferenceStatement
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

#TextTransformationPriority: int & >=0

#TextTransformationType: "NONE" | "COMPRESS_WHITE_SPACE" | "HTML_ENTITY_DECODE" | "LOWERCASE" | "CMD_LINE" | "URL_DECODE" | "BASE64_DECODE" | "HEX_DECODE" | "MD5" | "REPLACE_COMMENTS" | "ESCAPE_SEQ_DECODE" | "SQL_HEX_DECODE" | "CSS_DECODE" | "JS_DECODE" | "NORMALIZE_PATH" | "NORMALIZE_PATH_WIN" | "REMOVE_NULLS" | "REPLACE_NULLS" | "BASE64_DECODE_EXT" | "URL_DECODE_UNI" | "UTF8_TO_UNICODE"

#TokenDomains: [...string & =~"^[\\w\\.\\-/]+$" & strings.MinRunes(1) & strings.MaxRunes(253)]

#UriFragment: {
	FallbackBehavior?: "MATCH" | "NO_MATCH"
}

#UriPath: {...}

#UsageOfAction: "ENABLED" | "DISABLED"

#VisibilityConfig: {
	CloudWatchMetricsEnabled: bool
	MetricName: string & strings.MinRunes(1) & strings.MaxRunes(128)
	SampledRequestsEnabled: bool
}

#WalletAddress: string & =~".*\\S.*" & strings.MinRunes(26) & strings.MaxRunes(44)

#XssMatchStatement: {
	FieldToMatch: #FieldToMatch
	TextTransformations: [...#TextTransformation]
}
