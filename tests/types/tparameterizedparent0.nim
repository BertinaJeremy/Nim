discard """
  file: "tparameterizedparent0.nim"
  line: 14
  errormsg: "inheritance only works with non-final objects"
"""
# bug #5264
type
  Kapal* = enum
    Besar

  Apple[T] = object of T
    color: int

var x = Apple[Kapal](color: 13)
echo x
