import std;

void main() {
    int N, K;
    readf("%d\n%d\n", N, K);

    foreach (_; 0 .. K) {
        int a, b;
        readf("%d %d\n", a, b);

        int res = min(a-1, N-a, b-1, N-b) % 3 + 1;
        res.writeln;
    }
}