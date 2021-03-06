# Задача 1
Дефинирайте процедура, която за подадени *x* и *n* пресмята сумата: 1 + x + x^2 + x^3 + ... + x^n. Процедурата да поражда <strong>линейно итеративен процес</strong>.

Примери:

    (= (calculate-sum 5 0) 1)
    (= (calculate-sum 5 1) 6)
    (= (calculate-sum 10 1) 11)
    (= (calculate-sum 1 11) 12)
    (= (calculate-sum 2 11) 4095)

# Задача 2
Дефинирайте процедура *sum-numbers a b*, която намира сумата на числата в интервала [*a*, *b*] (a < b), чиито цифри са в низходящ ред (напр. 321). Подаваните параметри винаги ще бъдат валидни.

Примери:

    (= (sum-numbers 1 9) 45)
    (= (sum-numbers 199 203) 200)
    (= (sum-numbers 219 225) 663)

# Задача 3
Дефинирайте предикат *substr? x y*, който приема две <strong>неотрицателни</strong> числа и проверява дали *x* е част от *y*.

Примери:

    (equal? (substr? 123 5123783) #t)
    (equal? (substr? 0 0) #t)
    (equal? (substr? 10 101) #t)
    (equal? (substr? 101 101) #t)
    (equal? (substr? 10 0) #f)
    (equal? (substr? 1253 5123783) #f)
    (equal? (substr? 12 0) #f)

# Задача 4
Да се дефинира процедура *sum-divisible-numbers a b k*, която връща сумата на числата от *a* до *b* (0 < *a* < *b*), чиято сума от цифрите е кратна на *k*. Подаваните параметри винаги ще бъдат валидни.

Примери:

    (= (sum-divisible-numbers 0 10 5) 5)
    (= (sum-divisible-numbers 0 100 5) 990)

# Задача 5
Дефинирайте процедура *calc-series-sum x n*, която за подадени *x* и *n* пресмята *n*-тата частична сума на следния ред:

![Alt text](sequence.png?raw=true "sequence")

Test cases:

    (calc-series-sum 1 0) ; -2
    (calc-series-sum 1 1) ; -2/3
    (calc-series-sum 1 2) ; -1 1/5
    (calc-series-sum 1 3) ; -1 1/21
    (calc-series-sum 1 4) ; -1 11/135
    (calc-series-sum 1 5) ; -1 29/385
    (calc-series-sum 1 6) ; -1 937/12285

# Задача 6
Казваме, че дадено число х е петоъгълно, ако х точки в равнината може да бъдат разположени под формата на петоъгълник по следния начин:

![Alt text](pentagon.png?raw=true "pentagon")

Да се дефинира процедура (p n), която за дадено естествено число n намира n-тото поредно петоъгълно число. Процедурата да поражда линейно итеративен процес.

Примери:

    (= (p 1) 1)
    (= (p 2) 5)
    (= (p 3) 12)
    (= (p 4) 22)
    (= (p 5) 35)
    (= (p 6) 51)