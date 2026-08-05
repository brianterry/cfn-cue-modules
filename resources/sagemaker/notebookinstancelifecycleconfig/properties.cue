package notebookinstancelifecycleconfig

#Properties: {
	NotebookInstanceLifecycleConfigName?: string
	OnCreate?: [...#NotebookInstanceLifecycleHook]
	OnStart?: [...#NotebookInstanceLifecycleHook]
}

#NotebookInstanceLifecycleHook: {
	Content?: string
}
