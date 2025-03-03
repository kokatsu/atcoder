import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    auto re = regex(r"\|\.*\*\.*\|");
    auto capture = matchFirst(S, re);

    string res = capture ? "in" : "out";
    res.writeln;
}
