import std;

void main() {
    string S;
    readf("%s\n", S);

    auto L = min(3, S.length);
    string C = lowercase ~ ".";
    int res;

    void f(string re = "", int len = 0) {
        if (len >= L) {
            return;
        }

        foreach (x; C) {
            string t = re ~ x;
            if (S.matchFirst(t)) {
                ++res;
                f(t, len + 1);
            }
        }
    }

    f();

    res.writeln;
}
