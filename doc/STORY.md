## Story: Demonstrate `direnv: source_up`

### Overview

The `direnv stdlib` provides[^1] a `source_up` helper, which traverses "up" the filesystem tree in search of additional `.envrc` files. This can be used to provide settings for cross-project (e.g, workspace-scoped) configuration and tools, and a sort of defaults/overrides mechanism.

### Acceptance

```shell
# given some ENV set in:
# - ${WORKSPACE}/.envrc
# - ${WORKSPACE}/src/github.com/<org>/<project A>/.envrc
# - ${WORKSPACE}/src/github.com/<org>/<project B>/.envrc
# and, assuming `direnv allow`

# when context is ${WORKSPACE}
$ cd ${WORKSPACE}
$ test "${PRESERVED}" = "from workspace" || echo "fail!"
$ test "${OVERRIDEN}" = "from workspace" || echo "fail!"

# when context is ${WORKSPACE}/src
$ cd ${WORKSPACE}/src
$ test "${PRESERVED}" = "from workspace" || echo "fail!"
$ test "${OVERRIDEN}" = "from workspace" || echo "fail!"

# when context is ${WORKSPACE}/src/github.com/<org>
$ cd ${WORKSPACE}/src/github.com/coreyti
$ test "${PRESERVED}" = "from workspace" || echo "fail!"
$ test "${OVERRIDEN}" = "from workspace" || echo "fail!"

# when context is ${WORKSPACE}/src/github.com/<org>/<project A>
$ cd ${WORKSPACE}/src/github.com/coreyti/ergo-api
$ test "${PRESERVED}" = "from workspace" || echo "fail!"
$ test "${OVERRIDEN}" = "from project A" || echo "fail!"

# when context is ${WORKSPACE}/src/github.com/<org>/<project B>
$ cd ${WORKSPACE}/src/github.com/coreyti/ergo-cli
$ test "${PRESERVED}" = "from workspace" || echo "fail!"
$ test "${OVERRIDEN}" = "from project B" || echo "fail!"

```

### Comments

- Note that:

  > the other `.envrc` is not checked by the security framework

- Also, it's not clear whether traversal halts at the first location. That'll be good to check in a follow-on story.

### References

- https://direnv.net/man/direnv-stdlib.1.html#codesourceup-ltfilenamegtcode

### Footnotes

[^1]: https://direnv.net/man/direnv-stdlib.1.html



