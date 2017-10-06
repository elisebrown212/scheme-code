;; I acted honestly in completing this assignment. It's all my own code! x Elise Brown
;; Short Assignment 7
(define (reverse listt)
    (if (null? listt) '()
        (append (reverse (cdr listt)) (list (car listt)))))

(define (deep-reverse listt)   ;;a. do deep-reverse IF element within the listt is a list (deep-reverse (car listt))
    (cond ((null? listt) '())
          ((list? (car listt))
              (append (deep-reverse (cdr listt)) (list (deep-reverse (car listt)))))
          (else
           (append (deep-reverse (cdr listt)) (list (car listt))))))

;;Test Cases
;;(reverse '())
;;()

;;(deep-reverse '())
;;()

;;(reverse '(1 (2 3) 4 5))
;;(5 4 (2 3) 1)

;;(deep-reverse '(1 (2 3) 4 5))
;;(5 4 (3 2) 1)

;;(deep-reverse '((1 (2 3) 4 (5 6))))
;;(((6 5) 4 (3 2) 1))

;;(reverse '(1 (2 3) (4 (5 6) 7) (8 9 (10 11 (12)))))
;;((8 9 (10 11 (12))) (4 (5 6) 7) (2 3) 1)

;;(deep-reverse '(1 (2 3) (4 (5 6) 7) (8 9 (10 11 (12)))))
;;((((12) 11 10) 9 8) (7 (6 5) 4) (3 2) 1)

#|Question: What is the order of growth of the running time of your deep-reverse procedure?
Hint: first, decide what should the measure of complexity (size of the input) be? Why? Justify your answers.

Answer:
The growth order of my deep-reverse procedure is O(n) because it traverses through the list at most n times for the entire list of numbers and nested
lists to be found. Given that the size of the input can be either a simple list of numbers or a complex nested list with both numbers and
inner-lists, the runtime has to be O(# of numbers and lists within the list).

Recurrence relation:
T(0) = C’
T(n) = T(n-1) + C --> O(n) + O(1) --> O(n)
T(n-1) = T(n-2) + C
T(n) = (T(n-2) + C) + C 
T(n) = T(n-3) + C + C + C
...
T(n) = T(0) + nC
= O(n)|#
