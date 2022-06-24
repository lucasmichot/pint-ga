# GitHub Action for Laravel Pint

This GitHub action allows you to fix your code using https://github.com/laravel/pint in one of your workflow.

## Usage

You can use it as a GitHub Action like this:

```yaml
# .github/workflows/lint.yml

on: [ push, pull_request ]

name: Lint

jobs:
  pint:
    name: Lint with Laravel Pint

    runs-on: ubuntu-20.04

    steps:
      - name: Checkout the code
        uses: actions/checkout@v3

      - name: Lint with Laravel Pint
        uses: docker://laravel/pint-github-action
```

_To use specific CLI parameters, e.g. `--preset` or `--config` options:_

```diff
# .github/workflows/lint.yml

on: [ push, pull_request ]

name: Lint

jobs:
  pint:
    name: Lint with Laravel Pint

    runs-on: ubuntu-20.04

    steps:
      - name: Checkout the code
        uses: actions/checkout@v3

      - name: Lint with Laravel Pint
        uses: docker://laravel/pint-github-action
+       with:
+         args: --config=vendor/my-company/coding-style/pint.json --preset laravel
```

## Docker

A Docker image is built automatically and located here at https://hub.docker.com/r/laravel/pint-github-action

You can run it in any given directory like this:

```sh
docker run --rm -it -w=/app -v ${PWD}:/app laravel/pint-github-action:latest
```
