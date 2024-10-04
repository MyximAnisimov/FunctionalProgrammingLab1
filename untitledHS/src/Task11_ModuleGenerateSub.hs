module Task11_ModuleGenerateSub(
    generateHVLists, generateDiagLists, generateDiagLists, generateDiagLists2
)
where
--Нахождение через модульную реализацию

    --Генерация последовательности максимальных чисел
generateHVLists :: [[Integer]] -> [Integer] -> [Integer]
generateHVLists [] result     = result
generateHVLists (x:xs) result = generateHVLists xs (generateHVLists' x result)

generateHVLists' :: [Integer] -> [Integer] -> [Integer]
generateHVLists' [] result = result
generateHVLists' xs result = generateHVLists' (drop 1 xs) (result ++ [product (take 4 xs)])

    --Генерация последовательности максимальных чисел из диагоналей
generateDiagLists :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists [] result _ _ = result
generateDiagLists xs result row col = if col + 3 < 20 && row + 3 < 20
                                            then result ++ generateDiagLists' xs result row col ++ generateDiagLists (tail xs) result (row + 1) col
                                        else result

generateDiagLists' :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists' [] result _ _ = result
generateDiagLists' xs result row col =
                                            if row + 3 < length xs && col + 3 < length (xs !! row)
                                                then [((xs !! row) !! col) * ((xs !! (row + 1)) !! (col + 1)) * ((xs !! (row + 2)) !! (col + 2)) * ((xs !! (row + 3)) !! (col + 3))] ++ generateDiagLists' xs result row (col + 1)
                                            else result

generateDiagLists2 :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists2 [] result _ _ = result
generateDiagLists2 xs result row col = if col + 3 < 20 && row + 3 < 20
                                            then result ++ generateDiagLists2' xs result row col ++ generateDiagLists2 (tail xs) result (row + 1) col
                                        else result

generateDiagLists2' :: [[Integer]] -> [Integer] -> Int -> Int -> [Integer]
generateDiagLists2' [] result _ _ = result
generateDiagLists2' xs result row col =
                                            if row + 3 < length xs && col + 3 < length (xs !! row)
                                                then [((xs !! (row + 3)) !! col) * ((xs !! (row + 2)) !! (col + 1)) * ((xs !! (row + 1)) !! (col+2)) * ((xs !! row) !! (col + 3))] ++ generateDiagLists2' xs result row (col + 1)
                                            else result