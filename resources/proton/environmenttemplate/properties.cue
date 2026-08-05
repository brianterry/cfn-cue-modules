package environmenttemplate

import "strings"

#Properties: {
	// <p>A description of the environment template.</p>
	Description?: string & strings.MinRunes(0) & strings.MaxRunes(500)
	// <p>The environment template name as displayed in the developer interface.</p>
	DisplayName?: string & strings.MinRunes(1) & strings.MaxRunes(100)
	// <p>A customer provided encryption key that Proton uses to encrypt data.</p>
	EncryptionKey?: string & =~"^arn:(aws|aws-cn|aws-us-gov):[a-zA-Z0-9-]+:[a-zA-Z0-9-]*:\\d{12}:([\\w+=,.@-]+[/:])*[\\w+=,.@-]+$" & strings.MinRunes(1) & strings.MaxRunes(200)
	Name?: string & =~"^[0-9A-Za-z]+[0-9A-Za-z_\\-]*$" & strings.MinRunes(1) & strings.MaxRunes(100)
	Provisioning?: #Provisioning
	// <p>An optional list of metadata items that you can associate with the Proton environment template. A tag is a key-value pair.</p>
         <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
        <i>Proton User Guide</i>.</p>
	Tags?: [...#Tag]
}

#Tag: {
	// <p>The key of the resource tag.</p>
	Key: string & strings.MinRunes(1) & strings.MaxRunes(128)
	// <p>The value of the resource tag.</p>
	Value: string & strings.MinRunes(0) & strings.MaxRunes(256)
}
