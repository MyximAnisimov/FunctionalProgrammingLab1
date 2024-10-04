 module Task20_GenerateSubsequenceByMap(
    generateByMap
 )
 where
--Вычисление через модульную реализацию
    --Генерация последовательности через map
generateByMap :: Integer -> [Integer]
generateByMap 0 = []
generateByMap n = map succ [0..n-1]