import std;

void main() {
    string S;
    readfln("%s", S);

    string T = std.uni.toUpper(S);

    bool ok = true;
    long p;
    foreach (x; "ICT") {
        long q = T[p .. $].countUntil(x);

        if (q == -1) {
            ok = false;
            break;
        }

        p += q;
    }

    string res = ok ? "YES" : "NO";
    res.writeln;
}
