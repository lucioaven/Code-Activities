import java.util.ArrayList;

public class EjercicioDos {

    public static Boolean encontrarNumero (ArrayList<Integer> lista, int n){
        int i = 0;
        while(i < lista.size()){
            if (lista.get(i) == n){
                return true;
            }
            i++;
        }
        return false;
    }
    public static void main(String[] args) {
        System.out.println(encontrarNumero (134567,2));
    }
}