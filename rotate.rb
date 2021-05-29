# Ejercicio realizador por: Cristina Ramirez

# Dado un arreglo A de N indices [A(0), A(1), A(2), ..., A(N-1), A(N)] se dice
# que se "rota" una vez quedando A(K=1)=[A(N), A(0), A(1), A(2), ..., A(N-1)],
# esta rotacion puede ocurrir K veces dando como resultado un arreglo final B.

# a) Metodo que dado un array A y una cantidad K,
# rote el array K veces dando un array B. Ejemplo:
# A = [1,2,3,4,5]
# K = 3
# B = rotate(A,K)
# => [3,4,5,1,2]

# b) Que pasa si llamo al metodo con K = 500000000000000001 para el ejemplo
# anterior? Como puedo hacer que sea calculado en menos de 1 segundo?
# Simplificar el K con respecto a la cantidad de elementos del arreglo

def rotate(array, count = 1)
  rotated = Array.new(array)

  count = count.remainder(rotated.length)

  if count >= 0
    count.times { rotated.unshift(rotated.last).pop }
  else
    count.abs.times { rotated.push(rotated.first).delete_at(0) }
  end

  rotated
end

# a) Ejecutar metodo "rotate" para array de ejemplo dado
a = [1, 2, 3, 4, 5]
k = 3
b = rotate(a, k)
# => [3,4,5,1,2]

puts "a. Dado el array A=#{a} rotarlo K=#{k} veces"
puts "Resultado array B=#{b}"

# b) Ejecutar metodo "rotate" con K = 500000000000000001 en menos de 1 segundo
k = 500000000000000001
b = rotate(a, k)

puts "\nb. Dado el array A=#{a} rotarlo K=#{k} veces en menos de 1 segundo"
puts "Resultado array B=#{b}"
