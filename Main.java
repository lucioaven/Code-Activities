public class Main {
    public static void main(String[] args) {

        String[] pruebas = {
            "( 3 + 4 ) * 8",       // Válido
            "(3+4) * 8",           // Válido
            ") 3 + 4 ( * 8",       // Inválido
        };

        for (String elem : pruebas) {
            boolean result = Ejercicio5.ordenado(elem);
            System.out.println("Cadena: " + result );
        }
    }
}
