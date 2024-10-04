 module Task20_GenerateEndlessSubsequence(
    generateEndlessSubsequence
 )
 where
--Генерация бесконечной последовательности
    --Вычисление факториала 
generateEndlessSubsequence :: [Integer] -> Integer-> Integer
generateEndlessSubsequence [] n = n
generateEndlessSubsequence (x:xs) n
                | x == 101 = n
                | otherwise = x * generateEndlessSubsequence xs x