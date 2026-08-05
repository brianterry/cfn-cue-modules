package reportplan

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN depends on the resource type.
	ReportPlanArn: string
}
