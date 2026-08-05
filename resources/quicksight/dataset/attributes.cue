package dataset

// #Attributes defines the read-only attributes returned by this resource.
// These are the values available via Fn::GetAtt.
//
// Usage:
//   fn.#GetAtt & {_logicalName: "MyResource", _attribute: "<attribute name>"}
#Attributes: {
	// <p>The Amazon Resource Name (ARN) of the resource.</p>
	Arn: string
	// <p>The amount of SPICE capacity used by this dataset. This is 0 if the dataset isn't
	// imported into SPICE.</p>
	ConsumedSpiceCapacityInBytes: number
	// <p>The time that this dataset was created.</p>
	CreatedTime: string
	// <p>The last time that this dataset was updated.</p>
	LastUpdatedTime: string
	// <p>The list of columns after all transforms. These columns are available in templates,
	// analyses, and dashboards.</p>
	OutputColumns: [...#OutputColumn]
}
