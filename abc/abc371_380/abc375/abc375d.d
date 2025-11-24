import std;

void main() {
    string S;
    readf("%s\n", S);

    size_t N = S.length;

    long[][] L = new long[][](N + 1, 26);
    foreach (i, s; S) {
        L[i + 1][] = L[i].dup;
        ++L[i + 1][s - 'A'];
    }

    long[][] R = new long[][](N + 1, 26);
    foreach_reverse (i, s; S) {
        R[i][] = R[i + 1].dup;
        ++R[i][s - 'A'];
    }

    long res;
    foreach (i; 1 .. N - 1) {
        foreach (j; 0 .. 26) {
            res += L[i][j] * R[i + 1][j];
        }
    }

    res.writeln;
}
