import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto re = regex(r"([aiueo])x\1");

    string res = S.replaceAll(re, "...");
    res.writeln;
}
