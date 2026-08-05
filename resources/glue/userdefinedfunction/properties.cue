package userdefinedfunction

import "strings"

#Properties: {
	// The Java class that contains the function code.
	ClassName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The name of the catalog database in which the function is located.
	DatabaseName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The name of the function.
	FunctionName: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The type of the function.
	FunctionType?: "REGULAR_FUNCTION" | "AGGREGATE_FUNCTION" | "STORED_PROCEDURE"
	// The owner of the function.
	OwnerName?: string & strings.MinRunes(1) & strings.MaxRunes(255)
	// The owner type.
	OwnerType?: "USER" | "ROLE" | "GROUP"
	// The resource URIs for the function.
	ResourceUris?: [...#ResourceUri]
}

#ResourceUri: {
	// The type of the resource.
	ResourceType?: "JAR" | "FILE" | "ARCHIVE"
	// The URI for accessing the resource.
	Uri?: string & strings.MinRunes(1) & strings.MaxRunes(1024)
}
