import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    string S = "Takahashi", T = "Aoki";

    string res;
    if (A > B)
        res = S;
    else if (A < B)
        res = T;
    else
        res = (C == 1 ? S : T);

    res.writeln;
}
