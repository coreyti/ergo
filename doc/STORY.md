## Story: A Mono-Repository via `git subrepo`

### Overview

...

### Acceptance

```shell

```

### Comments

- Use `git subrepo clone` to add an existing repository as a project in this workspace.
- Use `git subrepo init` to make an existing workspace project become a sub-repo and, therefore, an independently publishable work.

### History to Report

```shell
git subrepo init src/github.com/coreyti/ergo-api \
  -r git@github.com:coreyti/ergo-api.git -b main
git subrepo push src/github.com/coreyti/ergo-api
# worked! and I cloned the repo to "play" as a standalone project. so easy!

```



### References

...

