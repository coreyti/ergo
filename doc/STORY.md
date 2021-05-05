## Story: Adding `asdf-direnv`

### Overview

...

### Acceptance

```shell
# before installing/configuring `asdf-direnv`...
$ hyperfine 'iex --version'
# ->
# Benchmark #1: iex --version
#   Time (mean ± σ):     418.2 ms ±   4.9 ms    [User: 358.3 ms, System: 251.6 ms]
#   Range (min … max):   412.9 ms … 428.8 ms    10 runs

# and, after...
$ hyperfine 'iex --version'
# ->
# Benchmark #1: iex --version
#   Time (mean ± σ):     143.4 ms ±   2.2 ms    [User: 223.8 ms, System: 57.8 ms]
#   Range (min … max):   140.4 ms … 147.5 ms    20 runs
```

So, there's a ~3x speed improvement to running `iex --version` with `asdf-direnv` installed.

It's also worth noting that:

- Once the tool is properly set up, all of our previous examples of `direnv` usage appear to work as expected and as before.
- When `direnv` context changes (joining and leaving directories), there is now a **lot** of log output. That can be silenced via `export DIRENV_LOG_FORMAT=""`. However, I don't think it would be a good idea to silence the logging altogether. 

### Comments

I first installed [`hyperfine`](https://github.com/sharkdp/hyperfine), which is used to perform the benchmarking. And, since `hyperfine` is available as a Homebrew package, I introduce the `Brewfile` in this story. There is also now a `bb` executable included as a helper to run `brew bundle --file ${WORKSPACE}/Brewfile`.

**Important:** The [setup instructions](https://github.com/asdf-community/asdf-direnv) for `asdf-direnv` include instructions to install `direnv 2.20.0`. However, that version does not include the `source_env_if_exists` command, which we use in the workspace. It took a bit of hoop-jumping to figure this out and correct things. Otherwise, `asdf-direnv` appears to work great. And, in keeping with usage of `asdf` as one of our package version managers, there is now a `${WORKSPACE}/.tool-versions` file.

### References

...

### Footnotes

...

