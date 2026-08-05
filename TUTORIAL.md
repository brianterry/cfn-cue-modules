# Tutorial: CloudFormation with CUE

This tutorial walks you through writing a CloudFormation template in CUE with type safety and compliance enforcement.

## Prerequisites

- [CUE](https://cuelang.org/docs/introduction/installation/) v0.17+
- AWS CLI (for deploying)

## Step 1: Create a project

```bash
mkdir my-infra && cd my-infra
cue mod init my-infra.example
```

## Step 2: Add the CloudFormation modules

```bash
cue mod get github.com/brianterry/cfn-cue-modules@v0
```

## Step 3: Write your template

Create `stack.cue`:

```cue
package infra

import (
    "github.com/brianterry/cfn-cue-modules/cfn"
    "github.com/brianterry/cfn-cue-modules/resources/s3/bucket"
)

stack: cfn.#Stack & {
    AWSTemplateFormatVersion: "2010-09-09"
    Description: "My first CUE-powered stack"

    Resources: {
        MyBucket: bucket.#Resource & {
            Properties: {
                BucketName: "my-app-bucket"
                VersioningConfiguration: Status: "Enabled"
            }
        }
    }
}
```

## Step 4: Validate

```bash
cue vet ./...
```

If everything is valid, there's no output. Try changing `"Enabled"` to `"Invalid"` — you'll get:

```
stack.Resources.MyBucket.Properties.VersioningConfiguration.Status: 2 errors in empty disjunction:
    conflicting values "Enabled" and "Invalid"
    conflicting values "Suspended" and "Invalid"
```

CUE catches the invalid enum value instantly — no need to deploy to find out.

## Step 5: Export to CloudFormation YAML

```bash
cue export . -e stack --out yaml > template.yaml
```

This produces a standard CloudFormation template ready for deployment.

## Step 6: Deploy

```bash
aws cloudformation deploy \
    --template-file template.yaml \
    --stack-name my-first-cue-stack
```

## Step 7: Add compliance

Import a compliance framework to enforce security policy:

```cue
package infra

import (
    "github.com/brianterry/cfn-cue-modules/cfn"
    "github.com/brianterry/cfn-cue-modules/resources/s3/bucket"
    "github.com/brianterry/cfn-cue-modules/resources/s3/bucket/compliance"
)

stack: cfn.#Stack & {
    AWSTemplateFormatVersion: "2010-09-09"

    Resources: {
        // Unify with NIST 800-53 — now encryption is REQUIRED
        MyBucket: bucket.#Resource & compliance.#NIST800_53Rev5 & {
            Properties: {
                BucketName: "my-secure-bucket"
                BucketEncryption: ServerSideEncryptionConfiguration: [{
                    ServerSideEncryptionByDefault: SSEAlgorithm: "aws:kms"
                }]
                PublicAccessBlockConfiguration: {
                    BlockPublicAcls:       true
                    BlockPublicPolicy:     true
                    IgnorePublicAcls:      true
                    RestrictPublicBuckets: true
                }
            }
        }
    }
}
```

Now if you try to set `SSEAlgorithm: "NONE"`, CUE immediately rejects it:

```
conflicting values "AES256" and "NONE"
conflicting values "aws:kms" and "NONE"
```

Compliance violations become compile errors. No pipeline needed.

## Step 8: Use intrinsic functions

```cue
import "github.com/brianterry/cfn-cue-modules/fn"

// Ref
Environment: fn.#Ref & {"Ref": "EnvironmentParam"}

// GetAtt
RoleArn: fn.#GetAtt & {"Fn::GetAtt": ["MyRole", "Arn"]}

// Sub
BucketArn: fn.#Sub & {"Fn::Sub": "arn:aws:s3:::${MyBucket}/*"}
```

These produce the correct CloudFormation intrinsic function JSON when exported.

## Step 9: Use CUE variables for DRY config

```cue
_env:     "production"
_appName: "order-api"

stack: cfn.#Stack & {
    Description: "\(_appName) - \(_env)"
    Resources: {
        Bucket: bucket.#Resource & {
            Properties: BucketName: "\(_appName)-data-\(_env)"
        }
    }
}
```

CUE variables (prefixed with `_`) are evaluated at export time and don't appear in the output — they're your configuration layer.

## Next Steps

- Browse the [examples](./examples/) directory for more patterns
- See all available resources in [`resources/`](./resources/)
- Check [available compliance frameworks](./README.md#compliance-frameworks-50)
- Use `cfn-cue-gen import` to convert existing templates to CUE
