import java.util.ArrayList;

public class Ejercicio4 {

    public static ArrayList<Integer> bubbleSort(ArrayList<Integer> lista) {
        int n = lista.size(); 
        for (int i = 0; i < n - 1; i++) // pasadas externas, reduce el rango de comparacion a medida que avanza
        {
            for (int j = 0; j < n - 1 - i; j++) // pasadas internas, compara e intercambia las veces necesarias 
            {
                if (lista.get(j) > lista.get(j + 1)) {
                    int temp = lista.get(j);
                    lista.remove(j); 
                    lista.add(j + 1, temp); 
                }
            }
        }
        return lista; 
    }
    public static void main(String[] args) {
        ArrayList<Integer> listaPrueba = new ArrayList<>();
        listaPrueba.add(5);
        listaPrueba.add(3);
        listaPrueba.add(8);
        listaPrueba.add(1);
        listaPrueba.add(4);

        System.out.println(bubbleSort(listaPrueba));
    }
}
