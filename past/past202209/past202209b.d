import std;

void main() {
    string S;
    readf("%s\n", S);

    auto L = S.length;

    string res = L > 2 ? S[0 .. L - 2] : "0";
    res.writeln;
}
