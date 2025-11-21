;;;; EXERCÍCIO 2 – CATÁLOGO DE FAUNA

(defstruct criatura
  nome ambiente periculosidade vida-media)

(setq catalogo
      (list
       (make-criatura :nome "Bladderfish" :ambiente "Safe Shallows"
                      :periculosidade "Baixa" :vida-media 3)

       (make-criatura :nome "Reaper Leviathan" :ambiente "Deep"
                      :periculosidade "Alta" :vida-media 80)

       (make-criatura :nome "Ghost Leviathan" :ambiente "Deep"
                      :periculosidade "Alta" :vida-media 120)

       (make-criatura :nome "Jellyray" :ambiente "Deep"
                      :periculosidade "Média" :vida-media 15)))

(defun filtra-por-perigo (catalogo)
  (remove-if (lambda (c)
               (string= (criatura-periculosidade c) "Baixa"))
             catalogo))

(defun relatorio-profundidade (catalogo)
  (mapcar (lambda (c)
            (format nil "~a: Vive em ~a"
                    (criatura-nome c)
                    (criatura-ambiente c)))
          (remove-if-not (lambda (c)
                           (string= (criatura-ambiente c) "Deep"))
                         catalogo)))

;; Teste
(format t "~%--- Teste Ex.2 ---~%")
(format t "~a~%" (relatorio-profundidade catalogo))
