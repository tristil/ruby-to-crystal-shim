# crystal-ruby-shim

[Crystal](https://github.com/manastech/crystal) is a great language that has
many syntactic and semantic similarities to Ruby despite the fact that it is
a statically compiled language and Ruby is dynamic. Crystal also has some
fundamental differences in design and philosophy that mean that it will never
be just "compiled Ruby". 

- **This is a good thing!** 
- **Crystal and Ruby can co-exist and do their own things!**
- **You probably don't need this library!**

This shim **monkeypatches** (with all the negative connotation that carries)
various Crystal interfaces so that they will be compatible with Ruby. In many
cases this is as simple as adding method aliases. The Crystal project avoids
using aliases and has chosen different names for many standard library methods
that otherwise have the same interface and functionality as the corresponding
Ruby methods. 

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal-ruby-shim:
    github: tristil/crystal-ruby-shim
```


## Usage

```crystal
require "ruby-to-crystal-shim/time/strftime" # add "strftime" alias to Time
require "ruby-to-crystal-shim/object/attr_methods" # add "attr_" alias to Time
```

Requiring "crystal-ruby-shim" will pull in all the monkeypatches. If you only
want a subset of the changes you should require files individually. For
example:

```crystal
require "crystal-ruby-shim"
```

## Contributing

1. Fork it ( https://github.com/[your-github-name]/crystal-ruby-shim/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [your-github-name](https://github.com/[your-github-name]) Joseph Method - creator, maintainer
