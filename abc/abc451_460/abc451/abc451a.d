import std;

void main() {
    string S;
    readfln("%s", S);

    string res = S.length % 5 == 0 ? "Yes" : "No";
    res.writeln;
}
