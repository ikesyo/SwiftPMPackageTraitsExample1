import Testing
@testable import SwiftPMPackageTraitsExample1

#if Foo
import Collections
#endif
#if Bar
import Numerics
#endif

@Test func example() async throws {
    #if Foo
    print("Foo is enabled")
    #endif

    #if Bar
    print("Bar is enabled")
    #endif
    
    #if FooBar
    print("FooBar is enabled")
    #endif
}
