import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    int sa = A[0].to!real.sqrt.floor.to!int, sb = B[0].to!real.sqrt.floor.to!int;
    bool[int] dict;
    foreach (i; 1 .. max(sa+1, sb+1)) {
        if (A[0] % i == 0) dict[i] = dict[A[0]/i] = true;
        if (B[0] % i == 0) dict[i] = dict[B[0]/i] = true;
    }

    auto factors = dict.keys;

    int res;
    foreach (f; factors) {
        if (zip(A, B).all!(x => x[0] % f == 0 || x[1] % f == 0)) {
            res = max(res, f);
        }
    }
    res.writeln;
}