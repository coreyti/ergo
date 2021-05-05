# Journal

That last commit, with the much larger (while still not substantial) content from this file, output the following:

```
➜  `step` - committing modifications within: '/Users/corey/Workspaces/ergo'
➜  ...
➜  with journal:
step ➜

The next thing is probably to create a [README](../README.md) with some description about this workspace/project.
**Notes:**
- In general, avoid using Markdown headings in this file. The leading `#` will be treated as the start of a comment in the git commit message and that heading will be dropped.
- As I write the "code" in VS Code and "docs" in Typora, I'm delighted (and a little surprised) to find that they both sync file system updates quite well. That is, changes made in one of the editors show up quickly in the other, on save.
```

I don't think it's actually useful to spit out all ove that journal content, so I'm going to remove that "feature".

On second thought, setting a `VERBOSE` environment flag could be a nice approach, and something that I can reuse later in this exploration/demonstration. I think I might even set that in, say, a `.local/envrc` or similar.

This commit includes an exploration into achieving that sort of  `VERBOSE` flag override. I'm not sure I like the particular approach, but it's worth considering. Hmm... as I'm working through the usage in this commit, it actually is somewhat nice that the `unset VERBOSE` in `.envrc` approach, along with `set -u` in a script, enforces that the script provide a mechanism for setting a default.

**Notes:**

- In general, avoid using Markdown headings in this file. The leading `#` will be treated as the start of a comment in the git commit message and that heading will be dropped.
- As I write the "code" in VS Code and "docs" in Typora, I'm delighted (and a little surprised) to find that they both sync file system updates quite well. That is, changes made in one of the editors show up quickly in the other, on save.
- All `.envrc` files and the like (`.env` too) should start with the `#!/bin/env bash` header. This is primarily in order to enable pretty syntax highlighting in editors.
- It's also going to be best to avoid any repeating structure in this file, as those lines will be stripped from the commit messages.

## For Inclusion in the README

The following notes should be cleaned up and provided as content in the [README](../README.md).

**On `direnv`:**

- The `PATH_add bin` usage means things like the following work (from anywhere within this workspace):

  ```shell
  $ step
  ```

  