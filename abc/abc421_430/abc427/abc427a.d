import std;

void main() {
    string S;
    readf("%s\n", S);

    size_t L = S.length;
    size_t H = L / 2;

    string res = S[0 .. H] ~ S[H + 1 .. L];
    res.writeln;
}
