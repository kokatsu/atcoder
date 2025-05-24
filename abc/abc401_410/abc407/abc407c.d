import std;

void main() {
    string S;
    readf("%s\n", S);

    int res = 1, L = S.length.to!int;
    foreach (i; 1 .. L) {
        int p = S[i - 1] - '0';
        int q = S[i] - '0';
        res += (10 + p - q) % 10 + 1;
    }

    res += S[L - 1] - '0';

    res.writeln;
}
