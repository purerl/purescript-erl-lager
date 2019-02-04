-module(lager@foreign).

-compile([{parse_transform, lager_transform}]).

-export([
         debug_/2,
         debug1/2,
         debug2/3,
         debug3/4,
         debug4/5,

         info_/2,
         info1/2,
         info2/3,
         info3/4,
         info4/5,

         notice_/2,
         notice1/2,
         notice2/3,
         notice3/4,
         notice4/5,

         warning_/2,
         warning1/2,
         warning2/3,
         warning3/4,
         warning4/5

        ]).

debug_(Str, Args) -> fun() -> _ = lager:debug(Str, Args) end.
debug1(Str, A) -> debug_(Str, [A]).
debug2(Str, A, B) -> debug_(Str, [A, B]).
debug3(Str, A, B, C) -> debug_(Str, [A, B, C]).
debug4(Str, A, B, C, D) -> debug_(Str, [A, B, C, D]).

info_(Str, Args) -> fun() -> _ = lager:info(Str, Args) end.
info1(Str, A) -> info_(Str, [A]).
info2(Str, A, B) -> info_(Str, [A, B]).
info3(Str, A, B, C) -> info_(Str, [A, B, C]).
info4(Str, A, B, C, D) -> info_(Str, [A, B, C, D]).

notice_(Str, Args) -> fun() -> _ = lager:notice(Str, Args) end.
notice1(Str, A) -> notice_(Str, [A]).
notice2(Str, A, B) -> notice_(Str, [A, B]).
notice3(Str, A, B, C) -> notice_(Str, [A, B, C]).
notice4(Str, A, B, C, D) -> notice_(Str, [A, B, C, D]).

warning_(Str, Args) -> fun() -> _ = lager:warning(Str, Args) end.
warning1(Str, A) -> warning_(Str, [A]).
warning2(Str, A, B) -> warning_(Str, [A, B]).
warning3(Str, A, B, C) -> warning_(Str, [A, B, C]).
warning4(Str, A, B, C, D) -> warning_(Str, [A, B, C, D]).



