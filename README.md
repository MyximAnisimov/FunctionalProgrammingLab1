Лабораторная работа №1 
======
Анисимов Максим Дмитриевич Р3333
Вариант 11 и 20

Описание вариантов
---

**Проблема 11**

В таблице 20×20 (внизу) четыре числа на одной диагонали выделены жирным.

08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08

49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00

81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65

52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91

22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80

24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50

32 98 81 28 64 23 67 10 **26** 38 40 67 59 54 70 66 18 38 64 70

67 26 20 68 02 62 12 20 95 **63** 94 39 63 08 40 91 66 49 94 21

24 55 58 05 66 73 99 26 97 17 **78** 78 96 83 14 88 34 89 63 72

21 36 23 09 75 00 76 44 20 45 35 **14** 00 61 33 97 34 31 33 95

78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92

16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57

86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58

19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40

04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66

88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69

04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36

20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16

20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54

01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48

Произведение этих чисел 26 × 63 × 78 × 14 = 1788696.

Каково наибольшее произведение четырех подряд идущих чисел в таблице 20×20, расположенных в любом направлении (вверх, вниз, вправо, влево или по диагонали)?

**Проблема 20**

n! означает n × (n − 1) × ... × 3 × 2 × 1

Например, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
и сумма цифр в числе 10! равна 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Найдите сумму цифр в числе 100!

Решение
---
Для решения 11 представлено в двух вариантах: 
* рекурсию (в модуле [Task11_Recursions.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task11_Recursions.hs))
* модульная реализация (в модулях [Task11_ModuleGenerateSubSequence.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task11_ModuleGenerateSub.hs), [Task11_ModuleMakeCon](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task11_ModuleMakeCon.hs))

В рекурсивном методе программа проходится по матрице:
- горизонтально (используются функции `findMaxMatrix` для нахождения максимума во всей матрице, `findMaxRow` - вспомогательная функция для `findMaxMatrix` для поиска максимального числа в конкретной строке)
- вертикально (те же самые функции, что и для горизонтального обхода, только матрица транспонируется при помощи функции `transponateMatrix`)
- горизонатльно правой нижней диагональю (`findDiagonalRow1` - поиск максимума среди всех строк, `findDiagonalCol1` - нахождение максимума в каждых четырёх строках, `findMultipleEl` - проход по четырём строчкам)
- горизонтально правой верхней диагональю (`findDiagonalRow2`, `findDiagonalCol2`, `findMultipleEl`)

В конце среди всех четырёх обходов ищется максимальный ответ при помощи функции `findResult`

В модульной реализации программа так же проходится по матрице всеми 4 способами, но в модуле [Task11_ModuleGenerateSub.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task11_ModuleGenerateSub.hs) осуществляется генерация последовательности максимальных чисел после каждого из проходов, а затем в модуле [Task11_ModuleMakeCon.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task11_ModuleMakeCon.hs) осуществляется свёртка всех последовательностей и поиск максимальных чисел

Решение данной проблемы на Джава:

Решение 20-ой проблемы представлено в 5 вариантах:
* рекурсия - функции `factorialFunc` и `countFactSum` в модуле [Task20_Recursions.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task20_Recursions.hs)
* хвостовая рекурсия - функции `factorialTailFunc`, `factorialTailFuncInner`, `countTailFactSum`, `countSumInner` в модуле [Task20_Recursions.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task20_Recursions.hs)
* модульная реализация с использованием генерации последовательности в модуле [Task20_ModuleGenerateSub.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task20_ModuleGenerateSub.hs), и свёртки в модуле [Task20_ModuleMakeCon.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task20_ModuleMakeCon.hs)
* с генерацией последовательности при помощи map в модуле [Task20_GenerateSubsequenceByMap](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task20_GenerateSubsequenceByMap.hs)
* с генерацией бесконечной последовательности в модуле [Task20_GenerateEndlessSubsequence.hs](https://github.com/MyximAnisimov/FunctionalProgrammingLab1/blob/main/src/Task20_GenerateEndlessSubsequence.hs)

Решение проблемы на Джава:








