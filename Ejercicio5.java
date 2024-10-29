import java.util.Stack;

public class Ejercicio5 {

    public static boolean ordenado(String cadena) {
        Stack<Character> pila1 = new Stack<Character>(); // Crea la pila
        for (int i = 0; i < cadena.length(); i++) { // Itera carácter por carácter
            char actual = cadena.charAt(i); // Almacena el carácter actual
            if (actual == '(' || actual == '[' || actual == '{') { // Si es un carácter de apertura lo guarda
                pila1.push(actual); 
            } else 
                if (actual == ')' || actual == ']' || actual == '}') { // Si es un carácter de cierre
                    if (pila1.isEmpty()) { // Si la pila está vacía
                        return false;   
                    } else {
                        char ultimo = pila1.pop(); // Retira el último elemento de la pila
                        // Controla que el elemento de la pila coincida con el mismo elemento de cerrado
                        if ((actual == ')' && ultimo != '(') ||
                            (actual == ']' && ultimo != '[') ||
                            (actual == '}' && ultimo != '{')) {
                            return false;
                        }
                }
            }
        }
        return pila1.isEmpty(); // Devuelve true si la pila está vacía
    }
}






    
        
    
    
    
    
        
    
