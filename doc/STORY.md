## Story: Demonstrate `source_up` Halting

### Overview

So far, we've seen `source_up` used with a chain of 2 `.envrc` files. Here, we'll show that a `.envrc` in the middle can break the chanin, which may or may not be desirable. In this demonstration, we'll use a location that is effectively equivalent to a GitHub "user" or "organization", which is a reasonable use case, and that `.envrc` will **not** include `source_up`.

### Acceptance

```shell
$ cd ~/Workspaces/ergo
$ echo $WORKSPACE 
# -> /Users/corey/Workspaces/ergo

$ echo $ORGANIZATION
# ->

$ cd $PROJECT_A
$ echo $ORGANIZATION 
# -> /Users/corey/Workspaces/ergo/src/github.com/coreyti
$ echo $PROJECT     
# -> /Users/corey/Workspaces/ergo/src/github.com/coreyti/ergo-api
$ echo $WORKSPACE
# -> 
```



### Comments

Ah! And, as an example of why the `source_up` chain should probably **not** be broken:

```shell
$ pwd
# -> /Users/corey/Workspaces/ergo/src/github.com/coreyti/ergo-api

$ story
# -> zsh: command not found: story
```



### References

...

### Footnotes

...

