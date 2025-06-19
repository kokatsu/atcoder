import std;

void main() {
    int N, Q;
    string S;
    readf("%d %d\n%s\n", N, Q, S);

    auto C = new int[](N);
    foreach (i; 1 .. N) {
        C[i] = C[i - 1] + (S[i] == S[i - 1] ? 1 : 0);
    }

    foreach (i; 0 .. Q) {
        int l, r;
        readf("%d %d\n", l, r);

        int res = C[r - 1] - C[l - 1];
        res.writeln;
    }
}
