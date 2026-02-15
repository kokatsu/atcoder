import std;

void main() {
    dchar X;
    readfln("%c", X);

    string s;
    readfln("%s", s);

    string res = s.replace(X, "");
    res.writeln;
}
