package deployment

#Properties: {
	// The application ID.
	ApplicationId: string & =~"^\\S{1,80}$"
	// The version number of the application to deploy
	ApplicationVersion: int
	// The environment ID.
	EnvironmentId: string & =~"^\\S{1,80}$"
}
