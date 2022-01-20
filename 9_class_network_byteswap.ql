
import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    // TODO: replace <class> and <var>
    exists( MacroInvocation mi | mi.getExpr() = this and mi.getMacroName() in ["ntohs", "ntohl", "ntohll"]
      // TODO: <condition>
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"