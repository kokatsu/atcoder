import std;

void main() {
    int N;
    readfln("%d", N);

    int M = 10 ^^ 5 + N - 1;
    string S = M.to!string;

    dchar A = S[0], B = S[1], C = S[2], D = S[3], E = S[4], F = S[5];

    string res = format("%c%c%c%c%c%c%c%c%c", A, A, B, C, D, D, E, F, E);
    res.writeln;
}
