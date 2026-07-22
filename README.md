# homebrew-yamlet

Homebrew tap for [**yamlet**](https://github.com/RicardoMonteiroSimoes/Yamlet) —
the yamlet spec toolchain CLI.

## Install

```sh
brew tap RicardoMonteiroSimoes/yamlet
brew install yamlet
```

Works on macOS and Linux, Intel and Apple Silicon / arm64. Upgrade with
`brew upgrade yamlet`.

## Note

`Formula/yamlet.rb` is **generated** — the [Yamlet](https://github.com/RicardoMonteiroSimoes/Yamlet)
repo's release workflow renders it from a template and pushes it here on every
release. Don't edit it by hand; changes belong in
[`tooling/packaging/yamlet.rb.tmpl`](https://github.com/RicardoMonteiroSimoes/Yamlet/blob/main/tooling/packaging/yamlet.rb.tmpl)
in the main repo. See its
[`RELEASING.md`](https://github.com/RicardoMonteiroSimoes/Yamlet/blob/main/RELEASING.md).
