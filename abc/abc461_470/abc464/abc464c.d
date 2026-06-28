import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[][] X = new int[][](M), Y = new int[][](M);
    int[] C = new int[](N);
    int S;
    foreach (_; 0 .. N) {
        int A, D, B;
        readfln("%d %d %d", A, D, B);

        --A, --D, --B;
        X[D] ~= A;
        Y[D] ~= B;

        if (C[A] == 0) {
            ++S;
        }
        ++C[A];
    }

    int[] R = new int[](M);
    foreach (i, ref r; R) {
        foreach (x; X[i]) {
            --C[x];
            if (C[x] == 0) {
                --S;
            }
        }

        foreach (y; Y[i]) {
            if (C[y] == 0) {
                ++S;
            }
            ++C[y];
        }

        r = S;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
