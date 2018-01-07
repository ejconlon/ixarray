module Test.IxArray

import Data.IxArray
import Data.Rel

testSomething : IO ()
testSomething = putStrLn "ok"

export
testAll : IO ()
testAll = do
  testSomething

-- something : (Ord a, Num a) => (m : a) -> (n : a) -> {auto smaller : OrdLTE m n} -> a
-- something m n = m + n
--
-- checkSomething : Int
-- checkSomething = something 1 2
--
-- checkSomething2 : Ord a => (x : a) -> (y : a) -> Maybe (OrdLTE x y)
-- checkSomething2 x y with (relate (<=) x y)
--   | (True ** pf) = Just pf
--   | _ = Nothing
--
-- checkSomething3 : (x : Int) -> (y : Int) -> Maybe Int
-- checkSomething3 x y = do
--   pf <- decide (<=) True x y
--   pure (something x y {smaller = pf})
--
-- z : Maybe Int
-- z = checkSomething3 1 2
--
-- checkBounded : (Ord a, Num a) => (m : a) -> (n : a) -> (o : a) -> {auto bounded : OrdBounded m n o} -> a
-- checkBounded m n o = m + n + o
--
-- whatev : Ord a => (m : a) -> (n : a) -> OrdBounded m n m -> b
-- whatev _ _ = absurd