# SwiftPMPackageTraitsExample1
https://github.com/swiftlang/swift-evolution/blob/main/proposals/0450-swiftpm-package-traits.md

Default (no traits):

```sh
$ swift test
Test Suite 'All tests' started at 2025-01-05 15:06:14.741.
Test Suite 'All tests' passed at 2025-01-05 15:06:14.742.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
◇ Test run started.
↳ Testing Library Version: 6.1 (a9f21aa1a8cd486)
↳ Target Platform: arm64-apple-macosx
◇ Test example() started.
✔ Test example() passed after 0.001 seconds.
✔ Test run with 1 test passed after 0.001 seconds.
```


Foo is enabled:

```sh
$ swift test --traits Foo
Test Suite 'All tests' started at 2025-01-05 15:07:39.379.
Test Suite 'All tests' passed at 2025-01-05 15:07:39.380.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
◇ Test run started.
↳ Testing Library Version: 6.1 (a9f21aa1a8cd486)
↳ Target Platform: arm64-apple-macosx
◇ Test example() started.
Foo is enabled
✔ Test example() passed after 0.001 seconds.
✔ Test run with 1 test passed after 0.001 seconds.
```


Bar is enabled:

```sh
$ swift test --traits Bar
Test Suite 'All tests' started at 2025-01-05 15:08:15.888.
Test Suite 'All tests' passed at 2025-01-05 15:08:15.889.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
◇ Test run started.
↳ Testing Library Version: 6.1 (a9f21aa1a8cd486)
↳ Target Platform: arm64-apple-macosx
◇ Test example() started.
Bar is enabled
✔ Test example() passed after 0.001 seconds.
✔ Test run with 1 test passed after 0.001 seconds.
```


FooBar is enabled:

```sh
$ swift test --traits FooBar
Test Suite 'All tests' started at 2025-01-05 15:08:43.138.
Test Suite 'All tests' passed at 2025-01-05 15:08:43.139.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
◇ Test run started.
↳ Testing Library Version: 6.1 (a9f21aa1a8cd486)
↳ Target Platform: arm64-apple-macosx
◇ Test example() started.
Foo is enabled
Bar is enabled
FooBar is enabled
✔ Test example() passed after 0.001 seconds.
✔ Test run with 1 test passed after 0.001 seconds.
```
