import std;

void main() {
    string S;
    readf("%s\n", S);

    auto res = 700 + S.count('o') * 100;
    res.writeln;
}
