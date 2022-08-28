import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto slen = S.length, tlen = T.length;
    ulong diff = slen - tlen;

    int res = int.max;
    foreach (i; 0 .. diff+1) {
        int cnt;

        foreach (j, t; T) {
            if (S[i+j] != t) ++cnt;
        }

        res = min(res, cnt);
    }

    res.writeln;
}