-- Лабораторна робота №5
-- Студента групи КН-31 Данг Тхань. Варіант 10

-- Завдання Реалiзувати та скомпiлювати одну з програм, розроблених у лабораторнiй роботi № 3 
-- для Вашого варiанта з введенням даних: а) з клавiатури, б) з файлу та виведенням результатiв: в) на екран, г) у файл.
removeN _ [] = []
removeN n li = take (n-1) li ++ removeN n (drop n li)

keyboardToConsole = do
    putStrLn "Enter n:"
    inputN <- getLine
    putStrLn "Enter the list:"
    inputList <- getLine
    let n = read inputN :: Int
    output <- return (removeN n inputList)
    print output

keyboardToFile = do
    putStrLn "Enter n:"
    inputN <- getLine
    putStrLn "Enter the list:"
    inputList <- getLine
    let n = read inputN :: Int
    output <- return (removeN n inputList)
    writeFile "keyboardToFileOutput.txt" (show output)

fileToConsole = do
    putStrLn "Enter n:"
    inputN <- getLine
    inputList <- readFile "input.txt"
    let n = read inputN :: Int
    output <- return (removeN n inputList)
    print(output)

fileToFile = do
    putStrLn "Enter n:"
    inputN <- getLine
    inputList <- readFile "input.txt"
    let n = read inputN :: Int
    output <- return (removeN n inputList)
    writeFile "fileToFileOutput.txt" (show output)

-- Висновок: на цій лабораторній роботі я ознайомився з модульною органiзацiєю програм та засобами введення-
-- виведення. Набув досвiду компiляцiї Haskell-програм.