import std;

void main() {
    int N;
    string S, T;
    readf("%d\n%s\n%s\n", N, S, T);

    int res;
    foreach (i; 0 .. N) {
        if (S[i] != T[i])
            ++res;
    }

    res.writeln;
}
