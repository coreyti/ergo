## Story: Use `source_env_if_exists` for Secrets and Such

### Overview

The `source_env_if_exists` is a nice mechanism for providing addtional settings, conditional on a `direnv` context file existing. This can be very useful for defining:

- overrides
- secrets
- personal preferences

It's (**VALIDATE THIS**) also possible to use this mechanism, along with shell parameter expansion, to provide a sort of "schema" for required `ENV`.

### Acceptance

```shell
: ${MESSAGE:?error: MESSAGE must be set}

# before adding "local" ENV settings:
$ cd $PROJECT_A
# prints direnv log info, including:
# ./.envrc:10: SECRET_KEY: must be defined in ".local/envrc"
$ echo $OVERRIDEN
# should be "from project A", but fails because of the error above.

# after adding those settings:
$ cd $PROJECT_A
$ echo $OVERRIDEN 
# -> from project A (local override)
$ echo $SECRET_KEY 
# -> have you heard of https://www.dinopass.com
```



### Comments

There a 2 or 3 separate considerations wrapped up in this story. The "overrides" for context-specific settings and personal preferences are clearly useful. The usage of shell parameter expansion within `.envrc` as a hook to enforce a sort of `ENV` "schema" is worth debate. A nice effect of this approach is that there is no need to commit `*.sample` files to fulfill that purpose.

It's worth noting that this combination of `source_up` and `source_env_if_exists`, at multiple levels, brings a sort of inheritance and override protocol that is somewhat brittle if the respective files are not constructed with care.

### References

...

### Footnotes

...

