# challenges logic test
class Challenges
  def self.es_primo?(numero)
    return false if numero <= 1
    return true if numero == 2

    (2..Math.sqrt(numero)).each do |i|
      return false if (numero % i).zero?
    end
    true
  end

  def self.ordenar_cadena(cadena)
    palabras = cadena.split(' ')
    palabras.sort_by(&:downcase).join(' ')
  end

  def self.es_palindromo?(cadena)
    cadena = cadena.downcase.gsub(/\s+/, '')
    cadena == cadena.reverse
  end

  def self.fibonacci(num)
    return [] if num <= 0
    return [0] if num == 1

    fib = [0, 1]
    (2...num).each do |i|
      fib << fib[i - 1] + fib[i - 2]
    end
    fib
  end

  def self.suma_dos_numeros(lista, objetivo)
    mapa = {}
    lista.each do |numero|
      complemento = objetivo - numero
      return [complemento, numero] if mapa[complemento]

      mapa[numero] = true
    end
    nil
  end
end
