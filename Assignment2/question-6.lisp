(defun triangle (num) 
(cond 
((or (not (integerp num)) (zerop num)) (write-line "input invalid; please enter a positive or a negative integer"))
((< num 0)
    (dotimes (n (abs num)) 
    (dotimes (p n)
    (princ #\space))
    (dotimes (k (- (abs num) n)) 
        (write '*))
    (fresh-line)
    ))
(t
    (dotimes (n num) 
    (dotimes (k (- num n)) 
    (write '*) )
    (fresh-line)) )
))

(write-line "(triangle 7) will output:")
(triangle 7)
(write-line "(triangle 4) will output:")
(triangle 4)
(write-line "(triangle -5) will output:")
(triangle -5)
(write-line "(triangle 2.5) will output:")
(triangle 2.5)
