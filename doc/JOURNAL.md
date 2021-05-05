# Journal

## Overview

This "journal" is an experiment into capturing thoughts, usage, etc. related to step-wise commits along with the commit. Much of the content should be updated to match each commit. Some of the content will persist across some number of commits.

Note that it's is not actually the case that git will strip everything prefixed with `#` from commit messages. It appears to only do so for *single* `#` lines. So, `##` and the like can in fact be used in this journal without being lost in the commit messages.

## Story

### Description

I should be able to commit via `step` (no arguments) without losing blank lines in the generated commit message.

### Acceptance

Check the commit message to confirm that there are (or, sadly, still are not) blank lines following the headings in this very same commit.

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