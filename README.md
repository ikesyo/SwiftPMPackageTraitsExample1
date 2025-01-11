# SwiftPMPackageTraitsExample1
https://github.com/swiftlang/swift-evolution/blob/main/proposals/0450-swiftpm-package-traits.md

Default (no traits):

```sh
$ swift test
Test Suite 'All tests' started at 2025-01-11 10:32:02.229.
Test Suite 'All tests' passed at 2025-01-11 10:32:02.230.
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
Test Suite 'All tests' started at 2025-01-11 10:32:24.621.
Test Suite 'All tests' passed at 2025-01-11 10:32:24.622.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
◇ Test run started.
↳ Testing Library Version: 6.1 (a9f21aa1a8cd486)
↳ Target Platform: arm64-apple-macosx
◇ Test example() started.
Foo is enabled: using Collections' OrderedSet
OrderedSet: ["Foo", "Bar", "Baz"]
✔ Test example() passed after 0.001 seconds.
✔ Test run with 1 test passed after 0.001 seconds.
```


Bar is enabled:

```sh
$ swift test --traits Bar
Test Suite 'All tests' started at 2025-01-11 10:32:41.077.
Test Suite 'All tests' passed at 2025-01-11 10:32:41.078.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
◇ Test run started.
↳ Testing Library Version: 6.1 (a9f21aa1a8cd486)
↳ Target Platform: arm64-apple-macosx
◇ Test example() started.
Bar is enabled: using Numerics' Complex
Complex: (1.0, 1.0)
✔ Test example() passed after 0.001 seconds.
✔ Test run with 1 test passed after 0.001 seconds.
```


FooBar is enabled:

```sh
$ swift test --traits FooBar
Test Suite 'All tests' started at 2025-01-11 10:32:54.602.
Test Suite 'All tests' passed at 2025-01-11 10:32:54.603.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.001) seconds
◇ Test run started.
↳ Testing Library Version: 6.1 (a9f21aa1a8cd486)
↳ Target Platform: arm64-apple-macosx
◇ Test example() started.
Foo is enabled: using Collections' OrderedSet
OrderedSet: ["Foo", "Bar", "Baz"]
Bar is enabled: using Numerics' Complex
Complex: (1.0, 1.0)
FooBar is enabled
✔ Test example() passed after 0.001 seconds.
✔ Test run with 1 test passed after 0.001 seconds.
```
