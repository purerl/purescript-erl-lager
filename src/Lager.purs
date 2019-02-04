module Lager where
  
import Prelude
import Effect (Effect)
import Erl.Data.List (List)

foreign import debug_ :: forall a. String -> List a -> Effect Unit
foreign import info_ :: forall a. String -> List a -> Effect Unit
foreign import notice_ :: forall a. String -> List a -> Effect Unit
foreign import warning_ :: forall a. String -> List a -> Effect Unit

debug :: forall args. Show args => String -> List args -> Effect Unit
debug = niceLog debug_
foreign import debug1 :: forall a. String -> a -> Effect Unit
foreign import debug2 :: forall a b. String -> a -> b -> Effect Unit
foreign import debug3 :: forall a b c. String -> a -> b -> c -> Effect Unit
foreign import debug4 :: forall a b c d. String -> a -> b -> c -> d -> Effect Unit

info :: forall args. Show args => String -> List args -> Effect Unit
info = niceLog info_
foreign import info1 :: forall a. String -> a -> Effect Unit
foreign import info2 :: forall a b. String -> a -> b -> Effect Unit
foreign import info3 :: forall a b c. String -> a -> b -> c -> Effect Unit
foreign import info4 :: forall a b c d. String -> a -> b -> c -> d -> Effect Unit

notice:: forall args. Show args => String -> List args -> Effect Unit
notice = niceLog notice_
foreign import notice1 :: forall a. String -> a -> Effect Unit
foreign import notice2 :: forall a b. String -> a -> b -> Effect Unit
foreign import notice3 :: forall a b c. String -> a -> b -> c -> Effect Unit
foreign import notice4 :: forall a b c d. String -> a -> b -> c -> d -> Effect Unit

warning:: forall args. Show args => String -> List args -> Effect Unit
warning = niceLog warning_
foreign import warning1 :: forall a. String -> a -> Effect Unit
foreign import warning2 :: forall a b. String -> a -> b -> Effect Unit
foreign import warning3 :: forall a b c. String -> a -> b -> c -> Effect Unit
foreign import warning4 :: forall a b c d. String -> a -> b -> c -> d -> Effect Unit

niceLog :: forall args. Show args => (forall stringArgs. String -> List stringArgs -> Effect Unit) -> String -> List args ->  Effect Unit
niceLog fn msg args = do
  let strings = map show args
  fn msg strings
