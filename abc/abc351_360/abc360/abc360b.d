import std;

void main() {
    string S, T;
    readf("%s %s\n", S, T);

    size_t L = S.length;

    bool ok;
    foreach (i; 1 .. L) {
        foreach (j; 0 .. i) {
            string U = std.range.stride(S[j .. $], i).to!string;
            ok |= U == T;
        }
    }

    string res = ok ? "Yes" : "No";
    res.writeln;
}
