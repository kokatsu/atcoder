import std;

void main() {
    long A, B, K;
    readf("%d %d %d\n", A, B, K);

    long res;
    while (A < B) {
        A *= K;
        ++res;
    }

    res.writeln;
}
