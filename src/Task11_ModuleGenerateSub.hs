module Task11_ModuleGenerateSub(
    generateHVLists, generateDiagLists, generateDiagLists, generateDiagLists2
)
where
--Нахождение через модульную реализацию

    --Генерация последовательности максимальных чисел
generateHVLists :: [[Integer]] -> [Integer] -> [Integer]
generateHVLists [] result     = result
generateHVLists xs result = foldl (flip generateHVLists') result xs

generateHVLists' :: [Integer] -> [Integer] -> [Integer]
generateHVLists' [] result = result
generateHVLists' xs result = generateHVLists' (drop 1 xs) (result ++ [product (take 4 xs)])

    --Генерация последовательности максимальных чисел из диагоналей
generateDiagLists :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists [] result _ _ = result
generateDiagLists xs result row col 
                                    | col + 3 < 20 && row + 3 < 20 = result ++ generateDiagLists' xs result row col ++ generateDiagLists (tail xs) result (row + 1) col
                                    | otherwise = result

generateDiagLists' :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists' [] result _ _ = result
generateDiagLists' xs result row col
                                     | row + 3 < length xs && col + 3 < length (xs !! row) = (((xs !! row) !! col) * ((xs !! (row + 1)) !! (col + 1)) * ((xs !! (row + 2)) !! (col + 2)) * ((xs !! (row + 3)) !! (col + 3))) : generateDiagLists' xs result row (col + 1)
                                     | otherwise = result

generateDiagLists2 :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists2 [] result _ _ = result
generateDiagLists2 xs result row col  
                                    | col + 3 < 20 && row + 3 < 20 = result ++ generateDiagLists2' xs result row col ++ generateDiagLists2 (tail xs) result (row + 1) col
                                    | otherwise = result

generateDiagLists2' :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists2' [] result _ _ = result
generateDiagLists2' xs result row col 
                                      | row + 3 < length xs && col + 3 < length (xs !! row) = (((xs !! (row + 3)) !! col) * ((xs !! (row + 2)) !! (col + 1)) * ((xs !! (row + 1)) !! (col+2)) * ((xs !! row) !! (col + 3))) : generateDiagLists2' xs result row (col + 1)
                                      | otherwise = result