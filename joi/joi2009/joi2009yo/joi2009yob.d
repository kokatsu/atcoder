import std;

enum int N = 10;

void main() {
    int[] W = new int[](N), K = new int[](N);

    foreach (i; 0 .. N) readf("%d\n", W[i]);

    foreach (i; 0 .. N) readf("%d\n", K[i]);

    W.sort!"a > b", K.sort!"a > b";

    int w = W[0..3].sum, k = K[0..3].sum;
    writeln(w, " ", k);
}