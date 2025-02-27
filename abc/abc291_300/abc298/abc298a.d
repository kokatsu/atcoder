import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto o = S.count('o');
    auto x = S.count('x');

    string res = (o > 0 && x == 0) ? "Yes" : "No";
    res.writeln;
}
