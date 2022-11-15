import std;

void main() {
    string S;
    readf("%s\n", S);

    string T = "ACGT";
    int res, l = -1;
    foreach (r, s; S) {
        if (T.canFind(s)) {
            res = max(res, r.to!int-l);
        }
        else {
            l = r.to!int;
        }
    }

    res.writeln;
}