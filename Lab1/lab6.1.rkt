(display "Зінган Михайло ІПЗ-41. Лаб 1. Варіант 6. Завдання 1.\n")

(display "n: ")
(define n (read))

(define depth 0)
(define (f n)
  (set! depth (+ depth 1))
  (cond ((or (= n 1) (= n 2)) 0)
        ((= n 3) 1)
        ((even? n) (* 2 (f (/ n 2))))
        ((odd? n) (+ (f (/ (- n 1) 2))
                     (f (/ (+ n 1) 2))
                     ))
   )
 )


(display "\nNum of methods: ")
(f n)
(display "\nRecursion depth: ")
(display depth)

