## purescript-erl-lager

A simplistic wrapper for the [lager](https://github.com/erlang-lager/lager) Erlang/OTP logging framework. Use [purescript-console](https://github.com/purerl/purescript-console) if you just want plain console logging, or consider the [Erlang/OTP 21 logger](https://ferd.ca/erlang-otp-21-s-new-logger.html).

Log a message via lager by supplying a format string and some showable arguments:

```purescript
Lager.debug2 "I have a tuple ~p and record ~p!" (Tuple 2 3) { thingy: "42" }
```

#### Known issues

There is no attempt to verify the format string, or support typed numeric etc. arguments.