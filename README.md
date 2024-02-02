# bazel_project_template
This project is a GitHub template repository for a project uses Bazel
and executable on GitPod and BuildBuddy.

## Set up BuildBuddy

To build this project on the BuildBuddy.
You need to add `.bazelrc.remote` at the top directory.
Its content should be like this:

```
build --bes_results_url=https://app.buildbuddy.io/invocation/
build --bes_backend=grpcs://remote.buildbuddy.io
build --remote_cache=grpcs://remote.buildbuddy.io
build --remote_timeout=3600
build --remote_header=x-buildbuddy-api-key=<<BuildBuddy API Key>>
build --jobs=300
```

Since this file contains the BuildBuddy API key and remote execute
is note suitable for all development environment, `.bazelrc.remote`
is added to `.gitignore` in advance.
