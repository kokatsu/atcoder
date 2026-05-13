import std;

void main() {
    long N, L, R;
    readfln("%d %d %d", N, L, R);

    string S;
    readfln("%s", S);

    long[] C = new long[](26);

    long res;
    foreach (i, s; S) {
        if (i >= L) {
            ++C[S[i - L] - 'a'];
        }

        res += C[s - 'a'];

        if (i >= R) {
            --C[S[i - R] - 'a'];
        }
    }

    res.writeln;
}
