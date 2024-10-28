// Auto-generated by Java-to-Swift wrapper generator.
import JavaRuntime

@JavaClass("java.lang.Number", extends: JavaObject.self)
public struct JavaNumber {
  @JavaMethod
  public init(environment: JNIEnvironment? = nil)

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
  public func equals(_ arg0: JavaObject?) -> Bool

  @JavaMethod
  public func toString() -> String

  @JavaMethod
  public func hashCode() -> Int32

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
