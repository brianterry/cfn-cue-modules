package accountcustomization

#Properties: {
	// The color theme assigned to the account for visual identification in the AWS Console.
	AccountColor?: "none" | "pink" | "purple" | "darkBlue" | "lightBlue" | "teal" | "green" | "yellow" | "orange" | "red"
	// A list of AWS region identifiers visible to the account in the AWS Console.
	VisibleRegions?: [...string & =~"^[a-z]{2}(-[a-z]{1,10}){1,2}-[1-9]$"]
	// A list of AWS service identifiers visible to the account in the AWS Console.
	VisibleServices?: [...string & strings.MinRunes(1) & strings.MaxRunes(64)]
}
