-- Лабораторна робота №2
-- Студента групи КН-31 Данг Тхань. Варіант 10

-- Завдання 1.	Визначити частоту кожного елемента списку, напр.: "aaabbcaadddd"⇒[(’a’,5), (’b’,2), (’c’,1), (’d’,4)].
import Data.Map (fromListWith, toList)

frequency :: (Ord a) => [a] -> [(a, Int)]
frequency xs = toList (fromListWith (+) [(x, 1) | x <- xs])

-- Завдання 2   Знайти простi дiльники числа.
factors n = [x | x <- [1..n], n `mod` x == 0]
isPrime n = factors n == [1, n]

primeFactors n = filter isPrime $ factors n

-- Висновок: отже, я набув досвіду визначення рекурсивних функцій, 
-- використання механізму зіставлення зі зразком i роботи з кортежами та списками.