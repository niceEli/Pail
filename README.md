# Pail

<!-- Uncomment the following line after replacing placeholders -->

![https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi5.walmartimages.com%2Fasr%2F8e590629-9829-44c3-a214-884c8b6fd874.097f13e450129aa2c37b96ff10ff6dae.jpeg&f=1&nofb=1&ipt=1c3b19eeb66408d5021f266631bd65e96a0442158d1cb968ea33640913bd9993&ipo=images](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi5.walmartimages.com%2Fasr%2F8e590629-9829-44c3-a214-884c8b6fd874.097f13e450129aa2c37b96ff10ff6dae.jpeg&f=1&nofb=1&ipt=1c3b19eeb66408d5021f266631bd65e96a0442158d1cb968ea33640913bd9993&ipo=images)

[![Tests](https://github.com/niceEli/pail/actions/workflows/ci.yml/badge.svg)](https://github.com/niceEli/pail/actions/workflows/ci.yml) [![Excavator](https://github.com/niceEli/pail/actions/workflows/excavator.yml/badge.svg)](https://github.com/niceEli/pail/actions/workflows/excavator.yml)

niceEli's bucket for [Scoop](https://scoop.sh), the Windows command-line installer.

## How do I install these manifests?

After manifests have been committed and pushed, run the following:

```pwsh
scoop bucket add versions # dependancy
scoop bucket add extras # dependancy
scoop bucket add Pail https://github.com/niceEli/Pail
scoop install Pail/pailtest <# or #> scoop install pailtest
pailtest # should say Hello Pail! and display your installed packages
```

## How do I contribute new manifests?

To make a new manifest contribution, please read the [Contributing
Guide](https://github.com/ScoopInstaller/.github/blob/main/.github/CONTRIBUTING.md)
and [App Manifests](https://github.com/ScoopInstaller/Scoop/wiki/App-Manifests)
wiki page.
