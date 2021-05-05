## Story: `PATH_add bin` inheritance & additions (2/2)

### Overview

In conjunction with `source_up`, `PATH_add` provides a nice mechanism for augmenting and modifying available executables. This, for example, could be a nice way to have tool conventions across projects, with workspace-level defaults.

### Acceptance

```shell
$ cd ${WORKSPACE}
$ think 					# cogito, ergo sum

$ cd ${PROJECT_A}
$ think 					# je pense, donc je suis

$ cd ${PROJECT_B}
$ think 					# some philosophy stuff

$ cd ${PROJECT_C}
$ think 					# cogito, ergo sum (no project-defined `think` executable)
```

...also, the  `story` executable has `${PROJECT}` as a context default. So, this story becomes 2:

- 1/2 will use `story` from within `${PROJECT_A}`, and should commit the content therein as well as this story specification, without committing the other projects.
- 2/2 will use `story` from `${WORKSPACE}` in order to commit the other projects, as well as the `.envrc` at the workspace root.

### Comments

...

### References

...

### Footnotes

...

