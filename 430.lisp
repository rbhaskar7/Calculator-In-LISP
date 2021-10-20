(format t "           *********************************************************~%")
(format t "          |               ---CALCULATOR IN LISP---                  |~%")
(format t "          |---AUTHOR: ABHIRUKTH K. C, IIIT KALYANI, CSE/19003/430---|~%")
(format t "           *********************************************************~%")
(format t "          -----------------------------------------------------------~%")

;THIS FUNCTION CALCULATES A + B
(defun ADDITION(A B)
	(defvar result)
	(setq result (+ A B)))														;SETS RESULT TO A + B

;THIS FUNCTION CALCULATES A - B
(defun SUBTRACTION(A B)
	(defvar result)
	(setq result (- A B)))														;SETS RESULT TO A - B

;THIS FUNCTION CALCULATES A * B
(defun MULTIPLICATION(A B)
	(defvar result)
	(setq result (* A B)))														;SETS RESULT TO A * B

;THIS FUNCTION CALCULATES A / B
(defun DIVISION(A B)
	(defvar result)
	;WHEN B == 0 THEN DIVISION IS NOT POSSIBLE
	(when (= B 0)
		(format t "~%ERROR! CAN NOT DIVIDE BY ZERO!"))							;ERROR MESSAGE

	(setq result (float (/ A B))))												;SETS RESULT TO A / B

;THIS FUNCTION CALCULATES A MOD B
(defun MODULUS(A B)
	(defvar result)
	;WHEN B == 0 THEN MODULUS CANT BE COMPUTED
	(when (= B 0)
		(format t "~%ERROR! CAN NOT FIND REMAINDER WHEN DIVIDED BY ZERO!"))		;ERROR MESSAGE

	(setq result (mod A B)))													;SETS RESULT TO REMAINDER(A, B)

;THIS FUNCTION CALCULATES A RAISED TO POWER B
(defun POWER(A B)
	(defvar result)
	(if (= B 0) 1 																;IF B == 0 THEN SET RESULT AS 0
		(setq result (* A (POWER A (- B 1))))))									;RECURSIVE FUNCTION CALL, SETS RESULT AS A ^ B

;THIS FUNCTION TAKES INPUT, CALLS THE ABOVE FUNCTIONS AND DISPLAYS OUTPUT	
(defun CALCULATOR()
	(defvar A)
	(defvar B)
	(defvar string)
	(format t "         |                      ***INPUTS***                         |")
	(format t "~%         |                          A: ")
	(setq A (read))
	(format t "         |                      |          |                         |")
	(format t "~%         |                          B: ")
	(setq B (read))
	(format t "         |                      ************                         |")

	(dotimes (N 6)
		(format t "~%~%         |                      ***OPTION***                         |")
		(format t "~%         |                     | 1. (A + B) |                        |")
		(format t "~%         |                     | 2. (A - B) |                        |")
		(format t "~%         |                     | 3. (A * B) |                        |")
		(format t "~%         |                     | 4. (A / B) |                        |")
		(format t "~%         |                     | 5. (A % B) |                        |")
		(format t "~%         |                     | 6. (A ^ B) |                        |")
		(format t "~%         |                      ************                         |")

		(format t "~%~%                                OPERATION: ")
		(setq string (read))

		(case string
			(1 (format t "                             RESULT: ~A + ~A = ~D" A B (ADDITION A B)) ())
			(2 (format t "                             RESULT: ~A - ~A = ~D" A B (SUBTRACTION A B)) ())
			(3 (format t "                             RESULT: ~A x ~A = ~D" A B (MULTIPLICATION A B)) ())
			(4 (format t "                             RESULT: ~A / ~A = ~D" A B (DIVISION A B)) ())
			(5 (format t "                             RESULT: ~A mod ~A = ~D" A B (MODULUS A B)) ())
			(6 (format t "                             RESULT: ~A ^ ~A = ~2D" A B (POWER A B)) ()))))

(CALCULATOR)

(format t "~%         |                                                           |")
(format t "~%          -----------------------------------------------------------~%")