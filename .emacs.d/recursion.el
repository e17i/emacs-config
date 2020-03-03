(defun Y (f)
  (lexical-let ((f f))
    (lambda (&rest args)
      (apply f (Y f) args))))

(defun Y/ (f)
  (lexical-let ((f f))
    (lambda (&rest args)
      (lexical-let ((args args))
        (lambda ()
          (apply f (Y/ f) args))))))

(defun T (f &rest args)
  (let ((result (apply (Y/ f) args)))
    (while (functionp result)
      (setq result (funcall result)))
    result))

(funcall (Y (lambda (f n a)
     (if (eq n 0) a
       (funcall f (- n 1) (+ a n))))) 4 0)

(T (lambda (f n a)
     (if (eq n 0) a
       (funcall f (- n 1) (+ a n)))) 4 0)


(defmacro recurse (name argvals &rest conds-and-step)
  "Here is the pinnacle and building material of recursion. NAME
defines a name for the defined recursion. ARGVALS defines the
initial state. All but the last of CONDS-AND-STEP are a list of
tuples, each one containing a condition and an expression,
usually an exit value expression designated by a call to return.
The last arg is a list of expressions, defining the next
recursion state.

A new recursion state can also be defined explicitely, using an
expression of the form (NAME vals)."
  (let ((args (mapcar #'car argvals))
        (conds (mapcar (lambda (elem)
                         `(,(car elem) ,(cadr elem)))
                       (seq-take conds-and-step (- (length conds-and-step) 1))))
        (step (car (last conds-and-step))))
    `(macrolet ((,name (&rest vals)
                       `(progn
                          (psetq ,@(apply #'nconc (mapcar* #'list ',args vals)))
                          (go iter)))
                (return (val)
                        `(return-from ,',name ,val)))
       (block ,name
         (let ,argvals
           (cl-tagbody
            iter
            (cond ,@conds)
            (,name ,@step)))))))

(recurse test ((n 5) (a 0))
         ((eq n 0) (return a))
         ((- n 1) (+ a n)))

(loop for i from 0 to 20 do
      (print
       (recurse fac ((n i) (f0 1) (f1 1))
                ((< n 2) (return f1))
                ((- n 1) f1 (+ f0 f1)))))

(loop for i from 0 to 20 do (print
(recurse fac2 ((n i) (c (lambda (r) (return r))))
         ((< n 2) (funcall c 1))
         ((- n 2) (lexical-let ((cn n) (cc c))
                    (lambda (rl)
                      (fac2 (- cn 1) (lexical-let ((rl rl))
                                       (lambda (rr)
                                         (funcall cc (+ rl rr)))))))))))

(defun range (steps &optional start inc)
  (let ((inc (or inc 1)))
    (recurse range ((i 0) (n (or start 0)) (a))
             ((>= i steps) (return a))
             ((+ i 1) (+ n inc) (append a (list n))))))

(defmacro list-compr (expr for i in seq &optional if cond)
  (let ((cond (or cond 't))
        (gseq (gensym)))
    `(let ((,gseq ,seq))
       (recurse list-compr ((n ,gseq) (,i (car ,gseq)) (a))
                ((not n) (return a))
                ((cdr n) (cadr n) (if ,cond (append a (list ,expr)) a))))))

(list-compr (* 2 i) for i in (range 10) if (eq 0 (% i 2)))
