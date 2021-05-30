Ejercicio enviado a Cristina Ramirez por Daniela Gainza (Shipit)

Sin usar el built-in method de ruby que se llama "rotate":
Dado un arreglo A de N índices [A(0), A(1), A(2), ..., A(N-1), A(N)] se dice que se "rota" una vez quedando A(K=1)=[A(N), A(0), A(1), A(2), ..., A(N-1)], esta rotación puede ocurrir K veces dando como resultado un arreglo final B.

a) Desarrolle un método que dado un array A y una cantidad K, rote el array K veces dando un array B. Ejemplo:
A = [1,2,3,4,5]
K = 3
B = rotate(A,K)
=> [3,4,5,1,2]

b) Qué pasa si llamo al método con K = 500000000000000001 para el ejemplo anterior? Como puedo hacer que sea calculado en menos de 1 segundo?

