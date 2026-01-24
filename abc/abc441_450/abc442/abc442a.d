import std;

void main() {
    string S;
    readfln("%s", S);

    auto res = S.count!(s => s == 'i' || s == 'j');
    res.writeln;
}
