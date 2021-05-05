# Journal

## Overview

This "journal" is an experiment into capturing thoughts, usage, etc. related to step-wise commits along with the commit. Much of the content should be updated to match each commit. Some of the content will persist across some number of commits.

Note that it's is not actually the case that git will strip everything prefixed with `#` from commit messages. It appears to only do so for *single* `#` lines. So, `##` and the like can in fact be used in this journal without being lost in the commit messages.

## Story

### Description

I'd like to demonstrate some of the nice features of  `direnv` when used in nested filesystem structures. I'm currently hung up a bit on whether or not I'm actually building some sort of "monorepo", or a workspace containing multiple repos. The latter requires, either, that `src` is ignored from git commits, or that I use git submodules or similar. The first solution is a bit of a turn off because of the way VS Code handles `gitignore` paths (in its search and explorer), the second is because of, well, git submodules.

### Acceptance

`src/github.com/<org>/<project>` exists under the following conditions:

- without the use of git submodules
- without a `<project>/.git` folder, unless that is deemed to be fine given...
- `$WORKSPACE/src` is not git-ignored.

...and, there exists a `.envrc` in the nested project(s) to demostrate `direnv` features.

### Implementation

[`git-subrepo`](https://github.com/ingydotnet/git-subrepo) looks somewhat promising.

### Comments

- It's important (for me) to remember that this monorepo, and even multi-root, part of the experiment is not central to the `dotenv` (et al) demonstration I'm currently working toward.

## Note

I'm actually going to commit this `step` without any implementation at all. I've decided that I want to rework this step+journal concept as a "story" instead, and will move the above into my first story implementation.

## Usage

There's no usage to add in this commit. This "usage" section is added as a placeholder.

## For Inclusion in the README

These notes should be cleaned up and provided as content in the [README](../README.md).

**On `direnv`:**

- The `PATH_add bin` usage means things like the following work (from anywhere within this workspace):

  ```shell
  $ step
  ```

- To enable pretty syntax highlighting in editors, `.envrc` files and the like (`.env` too) should start with the `#!/bin/env bash` header.