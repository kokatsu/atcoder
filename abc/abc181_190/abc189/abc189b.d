import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    X *= 100;

    int num;
    foreach (i; 0 .. N) {
        int V, P;
        readf("%d %d\n", V, P);

        num += V * P;

        if (num > X) {
            writeln(i+1);
            return;
        }
    }

    writeln(-1);
}