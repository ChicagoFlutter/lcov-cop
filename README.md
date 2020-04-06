# lcov cop

A Github Action which helps enforce a minimum code coverage threshold.

## Inputs

### `path`

**Required** The path to the `lcov.info` file.

## Example usage

```yaml
uses: ChicagoFlutter/lcov-cop@master
with:
  path: './coverage/lcov.info'
```