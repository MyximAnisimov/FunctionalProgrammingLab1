module Task20_ModuleMakeCon(
    calculateFactByConvolution,
    generateSeqNums
 )
 where
import           Data.Char
    --Вычисление факториала
calculateFactByConvolution :: [Integer] -> Integer
calculateFactByConvolution [] = 0
calculateFactByConvolution xs = product xs

    --Генерация последовательности символов
generateSeqNums :: String -> Integer
generateSeqNums "" = 0
generateSeqNums xs = foldl (\acc x -> acc + fromIntegral (digitToInt x)) 0 xs