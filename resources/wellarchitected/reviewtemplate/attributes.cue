package reviewtemplate

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// The review template ARN.
	TemplateArn: string & =~"^arn:aws(-us-gov|-iso(-[a-z])?|-cn)?:wellarchitected:[a-z]{2}(-gov|-iso([a-z])?)?-[a-z]+-\\d:\\d{12}:(review-template)/[a-f0-9]{32}$" & strings.MinRunes(50) & strings.MaxRunes(250)
	// The owner of the review template.
	Owner: string & =~"^[0-9]{12}$" & strings.MinRunes(12) & strings.MaxRunes(12)
	// The date and time the review template was last updated.
	UpdatedAt: string
	// The latest status of the review template.
	UpdateStatus: "CURRENT" | "LENS_NOT_CURRENT"
}
