import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    foreach (i; 1 .. N) {
        int res;
        foreach (j; 0 .. N - i) {
            if (S[j] == S[i + j])
                break;
            ++res;
        }

        res.writeln;
    }
}
