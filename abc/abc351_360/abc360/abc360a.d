import std;

void main() {
    string S;
    readf("%s\n", S);

    long R = S.countUntil('R');
    long M = S.countUntil('M');

    string res = R < M ? "Yes" : "No";
    res.writeln;
}
