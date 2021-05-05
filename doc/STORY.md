## Story: Demonstrate `${PROJECT}` usage

### Overview

Given the existence of mulitple projects within the workspace, we'd like to have project-aware context. The `direnv` helper, `expand_path` assists.

### Acceptance

```shell
$ cd ${WORKSPACE}/src/github.com/<org>/<project A>
$ echo ${PROJECT} # matches directory path to project A

$ cd ${WORKSPACE}/src/github.com/<org>/<project B>
$ echo ${PROJECT} # matches directory path to project B

$ cd ${WORKSPACE}
$ echo ${PROJECT:-undefined} # prints "undefined"
```



### Comments

...

### References

...

### Footnotes

...

