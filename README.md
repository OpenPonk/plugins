# OpenPonk: Plugins

[![Nightly](https://github.com/OpenPonk/plugins/actions/workflows/nightly.yml/badge.svg)](https://github.com/OpenPonk/plugins/actions/workflows/nightly.yml)

Umbrella repository assembling all-in-one builds and distributions of the [OpenPonk](https://openponk.org) modeling platform with all supported notation plugins.

## Download

Download pre-built all-in-one archives from [Releases](https://github.com/OpenPonk/plugins/releases) or [openponk.org/#download](https://openponk.org/#download).

## Installation

See [openponk.org/#direct-installation](https://openponk.org/#direct-installation) for the supported Pharo version.

```smalltalk
Metacello new
	baseline: 'OpenPonkPlugins';
	repository: 'github://OpenPonk/plugins';
	load: 'all'.
```

To also include developer tools (`OpenPonk-DevTools` and UML bootstrap generator), load the `'dev'` group instead of `'all'`.

## Documentation

For platform architecture, the full repository catalog, and contributing guidelines, see [`OpenPonk/.github`](https://github.com/OpenPonk/.github/blob/main/profile/README.md).
