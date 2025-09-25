import std;

void main() {
    int N, L, R;
    readf("%d %d %d\n", N, L, R);

    int[] A = iota(1, N + 1).array;
    A[L - 1 .. R].reverse;

    string res = format("%(%d %)", A);
    res.writeln;
}
