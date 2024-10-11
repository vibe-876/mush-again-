(use-modules (ice-9 textual-ports))


(define (mush-loop)
  (define (get-and-format)
    (string-split (get-line (current-input-port))
		  #\ ))
  
  (if (equal? (get-and-format) '("exit"))
      0
      (mush-loop)))
