import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    int B = T[2] == 'X' ? 2 : 3;
    long P;
    bool ok = true;
    foreach (i; 0 .. B) {
        long C = S[P .. $].countUntil(std.uni.toLower(T[i]));
        if (C == -1) {
            ok = false;
            break;
        }
        P += C + 1;
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
