import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = S.endsWith("san") ? "Yes" : "No";
    res.writeln;
}
