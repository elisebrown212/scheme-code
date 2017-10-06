;; Elise Brown 

(require racket/base)

(define multiply2
  (lambda ((a <number>) (b <integer>))                                    ;;Input two numbers
    (letrec ((iter (lambda ((c <number>) (d <integer>) (summ <integer>))   ;; Don't want deferred operations --> need to save running total (summ) 
                     (cond ((zero? d) summ)                             ;; End result = return the total
                           ((odd? d)                                        ;;If d is odd, add to the running total
                            (iter (* 2 c) (quotient d 2) (+ summ c) ))
                           (else                                    ;;If d isnt odd, continue recursively calling multiply2, but don't add to total
                            (iter (* 2 c) (quotient d 2) summ))))))     
      (iter a b 0))))


;;TEST CASES!!!

;;Test case 1: (multiply2 13 999) -- 12987
;;Test case 2: (multiply2 -13 999) -- -12987
;;Test case 3: (multiply2 40 0) -- 0
;;Test case 4: (multiply2 0 12) -- 0


