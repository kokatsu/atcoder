import std;

void main() {
    int N, M, X;
    readf("%d %d %d\n", N, M, X);

    auto C = new int[](N);
    auto A = new int[][](N);
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split.to!(int[]);
        C[i] = input[0];
        A[i] = input[1..$];
    }

    int res = int.max;
    foreach (i; 1 .. 1<<N) {
        int S;
        auto B = new int[](M);
        foreach (j; 0 .. N) {
            if ((i >> j) & 1) {
                S += C[j];
                B[] += A[j][];
            }
        }

        bool isOK = (B.minElement >= X);
        if (isOK) res = min(res, S);
    }

    if (res == int.max) res = -1;

    res.writeln;
}