;;;; EXERCÍCIO 4 – OCORRÊNCIAS PARANORMAIS

(defstruct ocorrencia
  nome ritual nivel-medo agentes-enviados)

(defun soma-medo-recursiva (lista)
  (if (null lista)
      0
      (+ (ocorrencia-nivel-medo (car lista))
         (soma-medo-recursiva (cdr lista)))))

(defun analise-final (lista)
  (let* ((soma (soma-medo-recursiva lista))
         (media (/ soma (length lista))))

    (mapcar (lambda (o) (ocorrencia-nome o))
            (remove-if-not
             (lambda (o)
               (and (> (ocorrencia-agentes-enviados o) 3)
                    (> (ocorrencia-nivel-medo o) media)))
             lista))))

;; Teste
(setq ocorrencias
      (list
       (make-ocorrencia :nome "Ritual de Sangue" :ritual t
                        :nivel-medo 90 :agentes-enviados 5)

       (make-ocorrencia :nome "Portão Amaldiçoado" :ritual nil
                        :nivel-medo 30 :agentes-enviados 2)

       (make-ocorrencia :nome "Entidade Sombria" :ritual t
                        :nivel-medo 70 :agentes-enviados 4)

       (make-ocorrencia :nome "Sussurros na Parede" :ritual nil
                        :nivel-medo 20 :agentes-enviados 1)))

(format t "~%--- Teste Ex.4 ---~%")
(format t "~a~%" (analise-final ocorrencias))
