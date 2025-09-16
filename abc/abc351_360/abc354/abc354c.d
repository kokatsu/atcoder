import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = new int[](N), C = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], C[i]);
    }

    int[] P = iota(1, N + 1).array;

    zip(A, C, P).sort!((a, b) => a[0] > b[0]);

    int M = int.max;
    bool[] R = new bool[](N + 1);
    R[] = true;
    R[0] = false;
    foreach (i; 0 .. N) {
        M = min(M, C[i]);
        if (i > 0 && M < C[i]) {
            R[P[i]] = false;
        }
    }

    int X = R.count(true).to!int;
    int[] Y = iota(N + 1).filter!(i => R[i]).array;

    string res = format("%d\n%(%d %)", X, Y);
    res.writeln;
}
