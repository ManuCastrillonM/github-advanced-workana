import javascript

/**
 * @name Magic Sum Check
 * @description Checks if the magicSum function is called with the argument 13.
 * @kind problem
 * @problem.severity error
 */

predicate isMagicSumCallWith13(FunctionCall call) {
  exists(Function f |
    f.getName() = "magicSum" and
    call.getTarget() = f and
    call.getArgument(0).getIntValue() = 13
  )
}

from FunctionCall call
where isMagicSumCallWith13(call)
select call, "The magicSum function is called with the argument 13."