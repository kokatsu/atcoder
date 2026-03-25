import std;

void main() {
    string S;
    readfln("%s", S);

    auto res = S.substitute("Left", "<", "Right", ">", "AtCoder", "A");
    res.writeln;
}
