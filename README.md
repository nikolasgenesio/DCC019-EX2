<h1 align="center">Exercício 2</h1>

<p align="center">Atividade desenvolvida em Racket durante a disciplina de Linguagem de Programação (DCC019).</p>

## 1. Extensão da Linguagem LET

A linguagem LET foi estendida com construções de soma, multiplicação e divisão. Dê a especificação para estas construções e implemente-as em Racket. O código a ser modificado está contido no arquivo:

```
/exercise/let/interpreter.rkt
```

## 2. Exemplos de Programas na Linguagem LET

Crie exemplos de programas na linguagem LET usando as operações de soma, multiplicação e divisão.

## 3. Procedimentos Recursivos em PROC

Procedimentos recursivos em PROC podem ser construídos usando uma estratégia de conhecida como combinador de ponto-fixo, que pode ser exemplificada no seguinte código em PROC:

```racket
(let makerec = proc (f)
                   let d = proc (x)
                             proc (z) ((f (x x)) z)
                   in proc (n) ((f (d d)) n)
   in let maketimes4 = proc (f)
                         proc (x)
                           if zero?(x) then 0 else -((f -(x,1)), -(0,4))
      in let times4 = (makerec maketimes4)
         in (times4 3))
; Resultado esperado: 12
```

Use a mesma ideia para fazer uma função recursiva, `sum(n)`,  que soma todos os valores naturais de 0 a n. Use a função para calcular o valor da soma dos números de 0 a 100.
