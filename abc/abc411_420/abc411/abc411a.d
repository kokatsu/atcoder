import std;

void main() {
    string P;
    int L;
    readf("%s\n%d\n", P, L);

    string res = P.length >= L ? "Yes" : "No";
    res.writeln;
}
