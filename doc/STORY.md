## Story: [fix] Commit missing updates

### Overview

For the last couple or few stories, commits were made within a "project", but there were "workspace" changes as well. Those were not committed because of the "context" notion in `story` (and this workspace idea overall). So, this is a fix to add those changes.

### Acceptance

```shell
# since we're still in $PROJECT_A, let's try...
$ git ls-files | wc -l # -> 2
$ CONTEXT=$WORKSPACE story

# ...and see that the workspace-level files are committed
$ git ls-files | wc -l # -> 0
```



### Comments

Generally speaking, the idea is that this project/context scoping will be natural, and one would not *typically* be modifying workspace-scoped config and project-scoped config in the same story/effort/commit. We'll see how well that holds.

### References

...

### Footnotes

...

