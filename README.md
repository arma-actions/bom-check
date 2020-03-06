# bom-check actions

This action checks for BOM in specified path by running `grep -rlI $'\xEF\xBB\xBF' $1`. If there is BOM in any of the files in the path the action fails. Only non-binary files are checked.

By default the actions checks root of the repository (`.`). To change the path edit `jobs.<job>.steps.with.path`

## Example workflow

```yml
# main.yml
name: CI

on:
  push:
    branches:
      - master
  pull_request: ~

jobs:
  test-bom-check:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master

      - uses: arma-actions/bom-check@v1
        name: Check for BOM
        # with:
          # path: 'addons'
```
