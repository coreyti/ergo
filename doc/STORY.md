## Story: Extending `direnv` with Custom Libs

### Overview

For some set of workspace-wide (or, workstation-wide?) utilities, it would be nice to have those available as helpers utilized within `.envrc` contexts, rather than as executables. In this example, we'll add a `missing_secrets` extension that can be used to check placeholder `ENV` keys against what are actually specified in "local".

### Acceptance

```shell
$ cd ${WORKSPACE}
$ extend # copy all `lib/direnv/*.sh` to the `direnv` library folder

$ echo "missing_secrets" >> ${PROJECT_A}/.envrc
$ cd ${PROJECT_A}
$ direnv allow
# -> direnv: checking for missing 'secrets' in: .local/envrc
#    direnv:   ➜ SECRET_VAL is missing

```



### Comments

- The path for the "local" `ENV` can be specified: `missing_secrets .envrc.private`.
- This commit also includes a dump of `direnv stdlib`, for ready availability.
- Some care needs to be taken when adding `direnv` extensions. When I first did so, something about my original implementation (perhaps the `set -euo pipefail`) cause `direnv` to partially and somewhat silently break.

### References

- [`DIRENV-STDLIB`](https://direnv.net/man/direnv-stdlib.1.html)

### Footnotes

...

