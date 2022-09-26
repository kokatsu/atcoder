import std;

void main() {
    string s;
    readf("%s\n", s);

    auto len = s.length;

    string f(string x, dchar y) {
        string ret;
        auto len = x.length;

        foreach (i; 0 .. len-1) {
            if (x[i] == y || x[i+1] == y) ret ~= y;
            else ret ~= x[i];
        }

        return ret;
    }

    long res = long.max;
    foreach (l; lowercase) {
        string t = s;
        long cnt;

        while (t.any!(x => x != l)) {
            t = f(t, l);
            ++cnt;
        }

        res = min(res, cnt);
    }

    res.writeln;
}