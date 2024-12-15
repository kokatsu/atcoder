import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto res = S.replace("A", "BB").replace("BB", "A");
    res.writeln;
}
