import std;

void main() {
    int N;
    readfln("%d", N);

    string S;
    readfln("%s", S);

    int res = N;
    foreach (i, s; S) {
        if (s == 'o' || (i > 0 && S[i - 1] == 'o') || (i < N - 1 && S[i + 1] == 'o')) {
            --res;
        }
    }

    res.writeln;
}
