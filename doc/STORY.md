## Story: [fix] Commit missing updates (2/2)

### Overview

For the last couple or few stories, commits were made within a "project", but there were "workspace" changes as well. Those were not committed because of the "context" notion in `story` (and this workspace idea overall). So, this is a fix to add those changes.

### Acceptance

```shell
# since we're still in $PROJECT_A, let's try...
$ git ls-files -m ${WORKSPACE} | wc -l # -> 2
$ CONTEXT=$WORKSPACE story

# ...and see that the workspace-level files are committed
$ git ls-files -m ${WORKSPACE} | wc -l # -> 0
```



### Comments

Part 2 of 2: fixes the `git ls-files` parameters.

### References

...

### Footnotes

...

