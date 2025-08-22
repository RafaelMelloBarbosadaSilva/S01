      10 INPUT "Digite a primeira nota: "; N1
      20 INPUT "Digite a segunda nota: "; N2
      30 MEDIA = (N1 + N2) / 2
      40 IF MEDIA > 60 THEN GOTO 100
      50 IF MEDIA < 30 THEN GOTO 200
      60 GOTO 300

      100 PRINT "Aprovado direto"
      110 GOTO 400

      200 PRINT "Reprovado direto"
      210 GOTO 400

      300 INPUT "Digite a nota da NP3: "; N3
      310 MEDIA = (MEDIA + N3) / 2
      320 IF MEDIA > 50 THEN GOTO 330 ELSE GOTO 340

      330 PRINT "Aprovado pela NP3"
      335 GOTO 400

      340 PRINT "Reprovado na NP3"

      400 END
