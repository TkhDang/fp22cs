-- Лабораторна робота №4
-- Студента групи КН-31 Данг Тхань. Варіант 10

-- Завдання:
-- Публiкацiї. Зберiгаються данi про публiкацiї, якi можуть бути книгою (автор/спiвавтори, назва, мiсто, видавництво, рiк), статтею (автор/спiвавтори, назва статтi, назва журналу, рiк, номер журналу, сторiнки) або тезами доповiдi (автор/спiвавтори, назва доповiдi, назва конференцiї, мiсто, рiк, сторiнки).
-- Визначне функцiї для :	
-- статистика публiкацiй автора — кiлькiсть, обсяг (у сторiнках), тип;
import Data.ByteString (group)
import Data.List (nub)

pubs = [("Lee", "To Kill a Mockingbird", 300, "Whatever"),
        ("Lee", "To Kill", 300, "Whatever"),
        ("Lee", "A Mockingbird", 300, "Whatever"),
        ("Lee", "To a Mockingbird", 300, "Whatever"),

        ("Flaubert", "Madame Bovary", 300, "Book"),
        ("Flaubert", "Mad Bovary", 300, "Book"),
        ("Flaubert", "Madame", 100, "Article"),
        ("Flaubert", "Bovary", 100, "Article"),

        ("Orwell", "Nineteen Eighty-Four", 500, "Colloquium"),
        ("Orwell", "Nineteen", 100, "Article"),
        ("Orwell", "Eighty-Four", 300, "Whatever"),
        ("Orwell", "Nineteen Four", 300, "Book")
        ]


findKey key = filter (\(a,b,_,_) -> a == key) pubs

pageSum key = sum [x | (_,_,x,_) <- findKey key]

allPubs key = length $ findKey key

showTypes key = nub [x | (_,_,_,x) <- findKey key]

-- Висновок: на цій лабораторній роботі я освоїв систему типiв та класи типiв. 
