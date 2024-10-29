// Auto-generated by Java-to-Swift wrapper generator.
import JavaRuntime

@JavaClass("java.lang.Byte", extends: JavaNumber.self)
public struct JavaByte {
  @JavaMethod
  public init(_ arg0: Int8, environment: JNIEnvironment? = nil)

  @JavaMethod
  public init(_ arg0: String, environment: JNIEnvironment? = nil) throws

  @JavaMethod
  public func equals(_ arg0: JavaObject?) -> Bool

  @JavaMethod
  public func toString() -> String

  @JavaMethod
  public func hashCode() -> Int32

  @JavaMethod
  public func compareTo(_ arg0: JavaByte?) -> Int32

  @JavaMethod
  public func compareTo(_ arg0: JavaObject?) -> Int32

  @JavaMethod
  public func byteValue() -> Int8

  @JavaMethod
  public func shortValue() -> Int16

  @JavaMethod
  public func intValue() -> Int32

  @JavaMethod
  public func longValue() -> Int64

  @JavaMethod
  public func floatValue() -> Float

  @JavaMethod
  public func doubleValue() -> Double

  @JavaMethod
  public func getClass() -> JavaClass<JavaObject>!

  @JavaMethod
  public func notify()

  @JavaMethod
  public func notifyAll()

  @JavaMethod
  public func wait(_ arg0: Int64) throws

  @JavaMethod
  public func wait(_ arg0: Int64, _ arg1: Int32) throws

  @JavaMethod
  public func wait() throws
}
extension JavaClass<JavaByte> {
  @JavaStaticField(isFinal: true)
  public var MIN_VALUE: Int8

  @JavaStaticField(isFinal: true)
  public var MAX_VALUE: Int8

  @JavaStaticField(isFinal: true)
  public var TYPE: JavaClass<JavaByte>!

  @JavaStaticField(isFinal: true)
  public var SIZE: Int32

  @JavaStaticField(isFinal: true)
  public var BYTES: Int32

  @JavaStaticMethod
  public func toString(_ arg0: Int8) -> String

  @JavaStaticMethod
  public func hashCode(_ arg0: Int8) -> Int32

  @JavaStaticMethod
  public func compareUnsigned(_ arg0: Int8, _ arg1: Int8) -> Int32

  @JavaStaticMethod
  public func compare(_ arg0: Int8, _ arg1: Int8) -> Int32

  @JavaStaticMethod
  public func valueOf(_ arg0: String) throws -> JavaByte!

  @JavaStaticMethod
  public func valueOf(_ arg0: String, _ arg1: Int32) throws -> JavaByte!

  @JavaStaticMethod
  public func valueOf(_ arg0: Int8) -> JavaByte!

  @JavaStaticMethod
  public func decode(_ arg0: String) throws -> JavaByte!

  @JavaStaticMethod
  public func toUnsignedLong(_ arg0: Int8) -> Int64

  @JavaStaticMethod
  public func toUnsignedInt(_ arg0: Int8) -> Int32

  @JavaStaticMethod
  public func parseByte(_ arg0: String) throws -> Int8

  @JavaStaticMethod
  public func parseByte(_ arg0: String, _ arg1: Int32) throws -> Int8
}