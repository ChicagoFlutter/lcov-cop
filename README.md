# lcov cop

A Github Action which helps enforce a minimum code coverage threshold.

## Inputs

### `path`

**Required** The path to the `lcov.info` file.

### `min_coverage`

**Required** The minimum coverage percentage allowed.

**Default** 100

## Example usage

```yaml
uses: ChicagoFlutter/lcov-cop@master
with:
  path: "./coverage/lcov.info"
  min_coverage: 95
```
