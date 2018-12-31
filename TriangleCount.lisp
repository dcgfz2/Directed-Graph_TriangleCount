(defun ingraph (num1 num2 graph pos)
  (
  if (null (null (position (list num1 num2) graph :test #'equal)))
    	(= (position (list num1 num2) graph :test #'equal) pos) (= 0 8)
)
)

(defun triangle (num1 num2 num3 graph)
  (and (ingraph (nth 0 (nth num1 graph)) (nth 0 (nth num2 graph)) graph num1) (and (ingraph (nth 0 (nth num2 graph)) (nth 0 (nth num3 graph)) graph num2) (in
graph (nth 0 (nth num3 graph)) (nth 0 (nth num1 graph)) graph num3)
  )
))

(defun countTriangles (graph)
  (let ((j 0))
   (loop for x from 0 to (length graph) do
    	(loop for y from 0 to (length graph) do
     	(loop for z from 0 to (length graph) do
            	(if (triangle x y z graph) (incf j) ()))

      	)) (/ j 3)
))
