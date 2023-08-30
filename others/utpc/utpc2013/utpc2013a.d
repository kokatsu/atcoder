import std;

void main() {
    string s;
    readf("%s\n", s);

    string t = "UTPC";

    string one = "ADOPQR";
    string two = "B";

    int f(dchar x) {
        if (one.canFind(x)) return 1;
        if (two.canFind(x)) return 2;
        return 0;
    }

    bool isOK = true;
    foreach (x, y; zip(s, t)) {
        isOK &= f(x) == f(y);
    }

    writeln(isOK ? "yes" : "no");
}