import std;

void main() {
    int N;
    readf("%d", N);

    string D = N % 2 == 1 ? "=" : "==";
    string S = "-".replicate((N - 1) / 2);

    string res = S ~ D ~ S;
    res.writeln;
}
