import std;

void main() {
    int N;
    readfln("%d", N);

    int[] C = new int[](N + 1);
    for (int x = 1; x * x <= N; x++) {
        for (int y = x + 1; x * x + y * y <= N; y++) {
            ++C[x * x + y * y];
        }
    }

    int[] L = iota(0, N + 1).filter!(i => C[i] == 1).array;

    string res = format("%d\n%(%d %)", L.length, L);
    res.writeln;
}
