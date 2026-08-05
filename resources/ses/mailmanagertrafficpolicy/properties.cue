package mailmanagertrafficpolicy

import "strings"

#Properties: {
	DefaultAction: #AcceptAction
	MaxMessageSizeBytes?: number & >=1
	PolicyStatements: [...#PolicyStatement]
	Tags?: [...#Tag]
	TrafficPolicyName?: string & =~"^[A-Za-z0-9_\\-]+$" & strings.MinRunes(3) & strings.MaxRunes(63)
}

#IngressAnalysis: {
	Analyzer: string & =~"^[a-zA-Z0-9:_/+=,@.#-]+$"
	ResultField: string & =~"^(addon\\.)?[\\sa-zA-Z0-9_]+$" & strings.MinRunes(1) & strings.MaxRunes(256)
}

#IngressBooleanExpression: {
	Evaluate: #IngressBooleanToEvaluate
	Operator: #IngressBooleanOperator
}

#IngressIpv4Expression: {
	Evaluate: #IngressIpToEvaluate
	Operator: #IngressIpOperator
	Values: [...string & =~"^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)/([0-9]|[12][0-9]|3[0-2])$"]
}

#IngressIpv6Expression: {
	Evaluate: #IngressIpv6ToEvaluate
	Operator: #IngressIpOperator
	Values: [...string & =~"^(([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:))\\/(12[0-8]|1[0-1][0-9]|[1-9][0-9]|[0-9])$" & strings.MaxRunes(49)]
}

#IngressIsInAddressList: {
	AddressLists: [...string]
	Attribute: #IngressAddressListEmailAttribute
}

#IngressStringExpression: {
	Evaluate: #IngressStringToEvaluate
	Operator: #IngressStringOperator
	Values: [...string]
}

#IngressTlsProtocolExpression: {
	Evaluate: #IngressTlsProtocolToEvaluate
	Operator: #IngressTlsProtocolOperator
	Value: #IngressTlsProtocolAttribute
}

#PolicyStatement: {
	Action: #AcceptAction
	Conditions: [...#PolicyCondition]
}

#Tag: {
	Key: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]+$" & strings.MinRunes(1) & strings.MaxRunes(128)
	Value: string & =~"^[a-zA-Z0-9/_\\+=\\.:@\\-]*$" & strings.MinRunes(0) & strings.MaxRunes(256)
}
