import std;

void main() {
    string S;
    readf("%s\n", S);

    auto len = S.length, h = len / 2;

    int res;
    foreach (i; 0 .. h) {
        if (S[i] != S[len-i-1]) ++res;
    }

    res.writeln;
}