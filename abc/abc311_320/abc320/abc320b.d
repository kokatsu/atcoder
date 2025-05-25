import std;

void main() {
    string S;
    readf("%s\n", S);

    int res;
    foreach_reverse (i, c; S) {
        char[] v;
        foreach_reverse (j; 0 .. i + 1) {
            v ~= S[j];
            if (S[j .. i + 1] == v) {
                res = max(res, v.length.to!int);
            }
        }
    }

    res.writeln;
}
