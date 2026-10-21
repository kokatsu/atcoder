import std;

void main() {
    int N;
    readfln("%d", N);

    long res;
    foreach (i; 0 .. N) {
        long A, B;
        readfln(i < N - 1 ? "%d %d" : "%d", A, B);

        res = max(0, res + A - B);
    }

    res.writeln;
}
