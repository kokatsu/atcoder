import std;

void main() {
    string S;
    readfln("%s", S);

    auto res = S.filter!(s => s.isDigit);
    res.writeln;
}
