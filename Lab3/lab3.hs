-- Лабораторна робота №3
-- Студента групи КН-31 Данг Тхань. Варіант 10

-- Завдання 1.	Видалити кожен n-й елемент списку, напр. при n=2: "1234590" ⇒ "1350".
removeN n [] = []
removeN n li = take (n-1) li ++ removeN n (drop n li)

-- Завдання 2.	Знайти усi простi числа в указаному дiапазонi.
factors n = [x | x <- [1..n], n `mod` x == 0]
isPrime a b = [x | x <- [a..b], factors x == [1, x]]

-- Висновок: на цій лабораторній роботі я освоїв визначення та використання функцiй вищого порядку.