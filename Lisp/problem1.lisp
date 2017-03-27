(defun range (max &key (min 0) (step 1))
  (loop for n from min below max by step
		collect n))

(defun sum-list (numbers)
  (if (null numbers) 0
	(+ (first numbers) (sum-list (rest numbers)))))

(defun multiple-3-or-5 (num) 
  (or 
	(eq (mod num 3) 0) 
	(eq (mod num 5) 0)))

(defun not-multiple-3-or-5 (num) 
  (not (multiple-3-or-5 num)))

(print (remove-if 
		 #'not-multiple-3-or-5 
		 '(1 2 3 4 5)))

(print  
	(sum-list 
	  (remove-if #'not-multiple-3-or-5
				 (range 1000 :min 0 :step 1))))
