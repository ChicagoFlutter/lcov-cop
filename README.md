# lcov cop

A Github Action which helps enforce a minimum code coverage threshold.

## Inputs

### `path`

**Optional** The path to the `lcov.info` file.

**Default** `./coverage/lcov.info`

### `min_coverage`

**Optional** The minimum coverage percentage allowed.

**Default** 100

### `exclude`

**Optional** paths to exclude from coverage

## Example usage

```yaml
uses: ChicagoFlutter/lcov-cop@master
with:
  path: "./coverage/lcov.info"
  min_coverage: 95
  exclude: "**/*.g.dart **/l10n/*.dart"
```
