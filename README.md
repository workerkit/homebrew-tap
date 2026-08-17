# WorkerKit Homebrew tap

Homebrew formulae for [WorkerKit](https://workerkit.ai).

## Install

```bash
brew install workerkit/tap/wk
```

Or tap first, then install by name:

```bash
brew tap workerkit/tap
brew install wk
```

Upgrade with `brew upgrade wk`.

## Formulae

| Formula | Command | Description |
|---|---|---|
| `wk` | `wk` | The WorkerKit CLI: manage AI workers and browse the kit directory |

The formula installs the published [`@workerkit/cli`](https://www.npmjs.com/package/@workerkit/cli)
npm package and depends on Homebrew's `node`. If you already use npm, installing with
`npm install -g @workerkit/cli` is equivalent; use one or the other, not both.

## Getting started

```bash
wk auth login      # browser-approved sign-in, approved by an account admin
wk workers list
wk kit search --query invoice
```

`wk --help` lists every command. Full documentation lives in the
[CLI repository](https://github.com/workerkit/cli).

## Releasing a new version

Formulae here track npm releases. For a new CLI version:

```bash
VERSION=X.Y.Z   # the version just published to npm
curl -sL -o cli.tgz "https://registry.npmjs.org/@workerkit/cli/-/cli-$VERSION.tgz"
sha256sum cli.tgz
```

Update `url` and `sha256` in `Formula/wk.rb` and open a pull request. CI installs, tests and
audits the formula on macOS and Linux before it merges.

## Links

- [Terms of Service](https://workerkit.ai/terms) · [Privacy Policy](https://workerkit.ai/privacy) ·
  [Acceptable Use Policy](https://workerkit.ai/aup) · [Security Overview](https://workerkit.ai/security)

## License

MIT
