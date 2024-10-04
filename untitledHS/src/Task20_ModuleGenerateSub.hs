 module Task20_ModuleGenerateSub(
    generateSubsequence
 )
 where
    --Генерация последовательности
generateSubsequence :: Integer -> [Integer]
generateSubsequence 0 = []
generateSubsequence n = [1..n]