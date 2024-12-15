import std;

void main() {
    string S;
    readf("%s\n", S);

    int res = S.length.to!int - 2;
    while (S[0 .. res / 2] != S[res / 2 .. res]) {
        res -= 2;
    }

    res.writeln;
}
