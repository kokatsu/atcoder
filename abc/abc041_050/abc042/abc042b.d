import std;

void main() {
    int N, L;
    readf("%d %d\n", N, L);

    auto S = new string[](N);
    foreach (i; 0 .. N) {
        readf("%s\n", S[i]);
    }

    S.sort;

    string res = S.join;
    res.writeln;
}
