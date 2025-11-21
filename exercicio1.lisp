;;;; EXERCÍCIO 1 – FARMÁCIA DA MAOMAO

(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5) (< peso-kg 20)) 10)
    ((and (>= idade-anos 5) (<= idade-anos 12) (>= peso-kg 20)) 25)
    (t 50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string= nome-da-erva "Ginseng") (* preco-base 3.0))
    ((string= nome-da-erva "Lótus") (* preco-base 1.5))
    (t preco-base)))

;; Teste
(format t "~%--- Teste Ex.1 ---~%")
(format t "Dosagem: ~a ml~%" (calcula-dosagem 60 14))
(format t "Preço final: ~a moedas~%" (ajusta-preco 10 "Lótus"))
