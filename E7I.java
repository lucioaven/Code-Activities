public interface E7I {

    void apilar(T item);
    T desapilar();
    T tope(); //ultimo elem
    boolean esVacia();
    void vaciar();
    void insertarInicio(T item);
    void insertarFin(T item);
    void insertarPos (T item, int pos);
    void imprimir();
}
