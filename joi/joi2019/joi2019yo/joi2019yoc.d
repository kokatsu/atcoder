import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int res, idx;
    while (idx < N) {
        if (idx < N - 1 && S[idx] != S[idx + 1]) {
            ++res, idx += 2;
        }
        else {
            ++idx;
        }
    }

    res.writeln;
}
