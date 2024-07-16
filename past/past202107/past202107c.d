import std;

void main() {
    string S;
    long L, R;
    readf("%s\n%d %d\n", S, L, R);

    string res = "No";
    if ((S[0] != '0' && S.length <= 10)|| S == "0") {
        long N = S.to!long;
        if (L <= N && N <= R) {
            res = "Yes";
        }
    }

    res.writeln;
}