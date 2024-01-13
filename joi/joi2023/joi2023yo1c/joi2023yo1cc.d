import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto res = S.substitute!("jj", "JJ", "oo", "OO", "ii", "II");
    res.writeln;
}