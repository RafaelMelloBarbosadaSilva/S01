;;;; EXERCÍCIO 3 – LOJA DE IWAI

(defstruct item nome tipo preco forca-magica)

(setq itens
      (list
       (make-item :nome "Espada Amaldiçoada" :tipo "Arma"
                  :preco 200 :forca-magica 90)

       (make-item :nome "Poção Sombria" :tipo "Pocao"
                  :preco 50 :forca-magica 20)

       (make-item :nome "Orbe Arcano" :tipo "Artefato"
                  :preco 300 :forca-magica 110)

       (make-item :nome "Adaga do Caos" :tipo "Arma"
                  :preco 150 :forca-magica 70)))

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(defun processa-venda (catalogo)
  (let* ((armas (remove-if-not
                 (lambda (i) (string= (item-tipo i) "Arma"))
                 catalogo))

         (armas-com-imposto
          (mapcar (lambda (a)
                    (make-item
                     :nome (item-nome a)
                     :tipo (item-tipo a)
                     :preco (adiciona-imposto (item-preco a))
                     :forca-magica (item-forca-magica a)))
                  armas))

         (resultado
          (mapcar (lambda (a)
                    (list (item-nome a)
                          (bonus-maldicao (item-forca-magica a))))
                  armas-com-imposto)))

    resultado))

;; Teste
(format t "~%--- Teste Ex.3 ---~%")
(format t "~a~%" (processa-venda itens))
