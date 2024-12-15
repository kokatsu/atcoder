import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int J = S.count('J').to!int, O = S.count('O').to!int, I = N - J - O;

    string res = "J".replicate(J) ~ "O".replicate(O) ~ "I".replicate(I);
    res.writeln;
}
