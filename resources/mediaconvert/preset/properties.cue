package preset

#Properties: {
	// The new category for the preset, if you are changing it.
	Category?: string
	// The new description for the preset, if you are changing it.
	Description?: string
	// The name of the preset that you are modifying.
	Name?: string
	// Specify, in JSON format, the transcoding job settings for this output preset. This specification must conform to the AWS Elemental MediaConvert job validation. For information about forming this specification, see the Remarks section later in this topic.
	SettingsJson: {...}
	Tags?: {...}
}
