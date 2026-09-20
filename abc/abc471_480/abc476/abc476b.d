import std;

void main() {
    int N;
    readfln("%d", N);

    string S;
    readfln("%s", S);

    string T;
    readfln("%s", T);

    string res = zip(S, T).all!(x => x[0] == x[1] || x[1] == '*') ? "Yes" : "No";
    res.writeln;
}
