import std;

void main() {
    int N;
    string S, T;
    readf("%d\n%s\n%s\n", N, S, T);

    string res = N.iota.any!(i => S[i] == 'o' && T[i] == 'o')
        ? "Yes" : "No";
    res.writeln;
}
