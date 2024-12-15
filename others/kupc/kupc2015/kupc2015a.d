import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        string S;
        readf("%s\n", S);

        auto L = S.length;
        ulong res, i;
        while (i + 5 <= L) {
            if (S[i .. i + 5] == "tokyo" || S[i .. i + 5] == "kyoto") {
                ++res;
                i += 5;
            }
            else {
                ++i;
            }
        }

        res.writeln;
    }
}
