(use-modules (ice-9 textual-ports))


(define (mush-loop)
  (define (get-and-format)
    (string-split (get-line (current-input-port))
		  #\ ))

  (define-syntax exec-command-list!
    (syntax-rules ()
      ((exec-command-list! command-list)
       (system* . command-list))))

  (exec-command-list! ((get-and-format))))
