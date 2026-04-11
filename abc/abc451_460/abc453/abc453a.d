import std;

void main() {
    int N;
    readfln("%d", N);

    string S;
    readfln("%s", S);

    string res = S.replace(regex(r"^o+"), "");
    res.writeln;
}
