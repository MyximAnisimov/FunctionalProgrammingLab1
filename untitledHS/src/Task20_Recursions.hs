module Task20_Recursions(
    factorialFunc,
    countFactSum,
    factorialTailFunc,
    countTailFactSum
)
where
import           Data.Char
--Вычисление через обычную рекурсию
factorialFunc :: Integer -> Integer
factorialFunc 0 = 1
factorialFunc n = n * factorialFunc (n-1)

countFactSum :: String -> Integer
countFactSum ""       = 0
countFactSum (x:line) = fromIntegral (digitToInt x) + countFactSum line

--Вычисление через хвостовую рекурсию
factorialTailFunc :: Integer -> Integer
factorialTailFunc n = factorialTailFuncInner n n - 1

factorialTailFuncInner :: Integer -> Integer -> Integer
factorialTailFuncInner val 0 = val
factorialTailFuncInner val index = factorialTailFuncInner (val * index) (index - 1)

countTailFactSum :: String -> Integer
countTailFactSum n = countSumInner n 0

countSumInner :: String -> Integer -> Integer
countSumInner "" val = val
countSumInner (x:line) val = countSumInner line (val + fromIntegral (digitToInt x))