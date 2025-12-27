import std;

void main() {
    int N, M;
    string S, T;
    readf("%d %d\n%s\n%s\n", N, M, S, T);

    int D = N - M + 1;

    int res = int.max;
    foreach (i; 0 .. D) {
        int R = M.iota.map!(j => (10 + (S[i + j] - '0') - (T[j] - '0')) % 10).sum;
        res = min(res, R);
    }

    res.writeln;
}
