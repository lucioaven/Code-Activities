import java.util.LinkedList;
import java.util.Random;

public class EjercicioUno {

    public static LinkedList<Integer> numAleatorios(int n) {
        LinkedList<Integer> lista = new LinkedList<>();
        Random random = new Random();

        // Genera n números aleatorios
        for (int i = 0; i < n; i++) {
            int numeroAleatorio = random.nextInt();
            lista.add(numeroAleatorio);
        }
        return lista;
    }

    public static void main(String[] args) {
        System.out.println(numAleatorios(10));
    }
}
    
    
