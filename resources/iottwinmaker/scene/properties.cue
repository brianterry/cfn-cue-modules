package scene

import "strings"

#Properties: {
	// A list of capabilities that the scene uses to render.
	Capabilities?: [...string & =~".*" & strings.MinRunes(0) & strings.MaxRunes(256)]
	// The relative path that specifies the location of the content definition file.
	ContentLocation: string & =~"[sS]3://[A-Za-z0-9._/-]+" & strings.MinRunes(0) & strings.MaxRunes(256)
	// The description of the scene.
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(512)
	// The ID of the scene.
	SceneId: string & =~"[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
	// A key-value pair of scene metadata for the scene.
	SceneMetadata?: {...}
	// A key-value pair to associate with a resource.
	Tags?: {...}
	// The ID of the scene.
	WorkspaceId: string & =~"[a-zA-Z_0-9][a-zA-Z_\\-0-9]*[a-zA-Z0-9]+" & strings.MinRunes(1) & strings.MaxRunes(128)
}
