package rule

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	Arn: string & =~"^arn(:[a-z0-9]+([.-][a-z0-9]+)*){2}(:([a-z0-9]+([.-][a-z0-9]+)*)?){2}:service/svc-[0-9a-z]{17}/listener/listener-[0-9a-z]{17}/rule/((rule-[0-9a-z]{17})|(default))$" & strings.MinRunes(20) & strings.MaxRunes(2048)
	Id: string & =~"^((rule-[0-9a-z]{17})|(default))$" & strings.MinRunes(7) & strings.MaxRunes(22)
}
