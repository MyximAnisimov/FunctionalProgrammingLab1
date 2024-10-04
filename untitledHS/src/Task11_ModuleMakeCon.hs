module Task11_ModuleMakeCon(
    convolution
)
where
    --Свёртка полученного результата
convolution :: [Integer] -> Integer
convolution [] = 0
convolution xs = foldl (\acc x -> max acc x) 0 xs