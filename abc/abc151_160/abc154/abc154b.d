import std;

void main() {
    string S;
    readf("%s\n", S);

    auto len = S.length;

    auto res = 'x'.repeat(len);
    res.writeln;
}