# ansible-galaxy

[![Current Tag](https://img.shields.io/github/v/tag/actionhippie/ansible-galaxy?sort=semver)](https://github.com/actionhippie/ansible-galaxy) [![Docker Build](https://github.com/actionhippie/ansible-galaxy/workflows/docker/badge.svg)](https://github.com/actionhippie/ansible-galaxy/actions/workflows/docker.yml)

[GitHub Action](https://github.com/features/actions) to upload Ansible roles to Galaxy.

## Usage

```yml
name: Example

on:
  - push
  - pull_request

jobs:
  test:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - uses: actionhippie/ansible-galaxy@v1
        with:
          api_key: ${{ secrets.GALAXY_API_KEY }}
```

## Inputs

### `token`

Token for Galaxy authentication

### `path`

Path of role directory, defaults to working dir

### `branch`

Name of the branch to import

### `name`

Name of the role to import, if different than the repo name

### `verbose`

Increase logging level, defaults to `false`

### `server`

Custom Galaxy API server URL

### `ignore_certs`

Ignore SSL certificate errors, defaults to `false`

## Outputs

None

## Security

If you find a security issue please contact thomas@webhippie.de first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

* [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2025 Thomas Boerger <thomas@webhippie.de>
```
