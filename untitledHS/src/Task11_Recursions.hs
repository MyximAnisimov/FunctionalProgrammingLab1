module Task11_Recursions(
   findMaxMatrix, findMaxRow,
    transponateMatrix, findResult,  findDiagonalRow1, findDiagonalRow2)
    where
import           Data.List
--Нахождение через базовую рекурсию

    --Нахождение результата
findResult :: Integer -> Integer -> Integer -> Integer -> Integer
findResult a b c d = max (max a b) (max c d)
    --Нахождение максимального результата в матрице
findMaxMatrix :: [[Integer]] -> Integer
findMaxMatrix []     = 0
findMaxMatrix (x:xs) = max (findMaxRow x) (findMaxMatrix xs)

    --Нахождение максимального результата в строчке
findMaxRow :: [Integer] -> Integer
findMaxRow []     = 1
findMaxRow (x:xs) = max (x * product (take 3 xs)) (findMaxRow xs)

    --Транспонирование матрицы
transponateMatrix :: [[Integer]] -> [[Integer]]
transponateMatrix []     = []
transponateMatrix matrix = transpose matrix

    --Нахождение максимального результата в матрице через правую нижнюю диагональ
findDiagonalRow1 :: [[Integer]] -> Int -> Int -> Integer
findDiagonalRow1 [] _ _ = 0
findDiagonalRow1 xs row col =
                            if row + 3 < 20
                             then max (findDiagonalCol1 xs row 0) (findDiagonalRow1 xs (row + 1) 0)
                             else 0

    --Нахождение максимального результата в 4 строчках
findDiagonalCol1 :: [[Integer]] -> Int -> Int -> Integer
findDiagonalCol1 [] _ _ = 0
findDiagonalCol1 xs row col =
                            if col + 3 < 20
                             then
                                let product = (findMultipleEl (xs !! row) col) * (findMultipleEl (xs !! (row + 1)) (col + 1)) * (findMultipleEl (xs !! (row + 2)) (col + 2)) * (findMultipleEl (xs !! (row + 3)) (col + 3))
                                in max product (findDiagonalCol1 xs row (col + 1))
                            else
                                0

     --Прохождение по строчке
findMultipleEl :: [Integer] -> Int -> Integer
findMultipleEl [] _ = 0
findMultipleEl xs n = if n < 20
                        then xs !! n
                        else 0


    --Нахождение максимального результата в матрице через правую верхнюю диагональ
findDiagonalRow2 :: [[Integer]] -> Int -> Int -> Integer
findDiagonalRow2 [] _ _ = 0
findDiagonalRow2 xs row col =
                            if row + 3 < 20
                             then max (findDiagonalCol2 xs row 0) (findDiagonalRow2 xs (row + 1) 0)
                             else 0

     --Нахождение максимального результата в 4 строчках
findDiagonalCol2 :: [[Integer]] -> Int -> Int -> Integer
findDiagonalCol2 [] _ _ = 0
findDiagonalCol2 xs row col =
                            if col + 3 < 20
                             then
                                let product = (findMultipleEl (xs !! (row + 3)) col) * (findMultipleEl (xs !! (row + 2)) (col + 1)) * (findMultipleEl (xs !! (row + 1)) (col + 2)) * (findMultipleEl (xs !! row) (col + 3))
                                in max product (findDiagonalCol2 xs row (col + 1))
                            else
                                0