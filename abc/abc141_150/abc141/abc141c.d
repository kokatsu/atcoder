import std;

void main() {
    int N, K, Q;
    readf("%d %d %d\n", N, K, Q);

    auto cnts = new int[](N);
    foreach (i; 0 .. Q) {
        int A;
        readf("%d\n", A);

        ++cnts[A - 1];
    }

    auto P = new int[](N);
    P[] = K;
    foreach (i; 0 .. N) {
        P[i] -= Q - cnts[i];
    }

    foreach (i; 0 .. N) {
        writeln(P[i] > 0 ? "Yes" : "No");
    }
}
