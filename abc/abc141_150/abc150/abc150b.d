import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int res;
    foreach (i; 0 .. N - 2) {
        if (S[i .. i + 3] == "ABC")
            ++res;
    }

    res.writeln;
}
