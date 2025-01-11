#if Foo
import Collections
#endif
#if Bar
import Numerics
#endif

public func echo() {
    #if Foo
    print("Foo is enabled: using Collections' OrderedSet")
    print("OrderedSet: \(["Foo", "Bar", "Baz"] as OrderedSet)")
    #endif

    #if Bar
    print("Bar is enabled: using Numerics' Complex")
    print("Complex: \(Complex(1, 1))")
    #endif
    
    #if FooBar
    print("FooBar is enabled")
    #endif
}
