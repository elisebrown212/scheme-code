;; Non-tail recursive
#|(define reverse alist <list>
    (lambda ((alist <list>))
      (cond ((zero? (length (alist)))'())     ;;if list is null, return empty list
          ((= 1 (length (alist)))alist)      ;; if list has one thing, return list
          ;;else return the reverse of the original list
          ;;list of all numbers --> car the list
           (append (reverse (cdr x)) (list (car x))))
    )
)|#
(define (reverses alist)
  (cond ((zero? (length alist))'())
        ((= 1 (length alist)) alist)
        (else
         (append (reverses (cdr alist)) (list (car alist)))))) 
;;Test Cases
;; (reverse '(1 2 3 4 5)) -->
;; (reverse '(1 (2 3) 4 5)) --> 

(define (reverse-helper blist loop)
  (if (null? lst)
      loop
      (reverse-helper (cdr lst) (cons (car lst) acc))))

(define (reverse blist)
  (reverse-helper blist '()))
;; Tail recursive
;;(define reverse2
;;  (lambda ((alist <list>))

 ;;   )
 ;; )

;;Test Cases
;; (reverse '(1 2 3 4 5)) -->
;; (reverse '(1 (2 3) 4 5)) --> 