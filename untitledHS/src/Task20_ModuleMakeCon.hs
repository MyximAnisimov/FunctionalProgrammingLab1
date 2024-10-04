module Task20_ModuleMakeCon(
    calculateFactByConvolution,
    generateSeqNums
 )
 where
import           Data.Char
    --Вычисление факториала при помощи свёртки
calculateFactByConvolution :: [Integer] -> Integer
calculateFactByConvolution [] = 0
calculateFactByConvolution xs = foldl (*) 1 xs

    --Генерация последовательности символов
generateSeqNums :: String -> Integer
generateSeqNums "" = 0
generateSeqNums xs = foldl (\acc x -> acc + fromIntegral (digitToInt x)) 0 xs