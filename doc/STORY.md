## Story: Commit changes with `bin/story` (1/2)

### Overview

A `bin/story` executable, made available for the entire workspace, commits any changes to this very same `STORY.md` file, as well as all other modifications within `${CONTEXT}`.

This story is split into two parts, in order to cover both command executions in the acceptance. This is part 1 of 2.

### Acceptance

```shell
# given modifications within:
# - ${WORKSPACE}/bin
# - ${WORKSPACE}/src

# This commits the changes within `bin`, and `STORY.md`
$ CONTEXT=${WORKSPACE}/bin story

# This commits the changes within `src`, and `STORY.md`
$ CONTEXT=${WORKSPACE}/bin story
```

### Comments

- Take a look at `${WORKSPACE}/bin/story` to get an idea of what is meant by "`${CONTEXT}`" above.

### References

[placeholder]

### Footnotes

[placeholder]

