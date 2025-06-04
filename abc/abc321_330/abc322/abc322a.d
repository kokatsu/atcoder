import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto index = S.countUntil("ABC");

    auto res = index >= 0 ? index + 1 : index;
    res.writeln;
}
