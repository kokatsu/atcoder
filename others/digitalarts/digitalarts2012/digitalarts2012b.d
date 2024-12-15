import std;

void main() {
    string s;
    readf("%s\n", s);

    if (s == "a" || s == "zzzzzzzzzzzzzzzzzzzz") {
        "NO".writeln;
    }
    else {
        auto res = s.to!(dchar[]);
        res.sort;

        if (res[0] == res[$ - 1]) {
            if (res[0] == 'a') {
                res.popBack;
                ++res[$ - 1];
            }
            else if (res[0] == 'z' || res.length == 1) {
                --res[$ - 1];
                res ~= 'a';
            }
            else {
                ++res[0];
                --res[$ - 1];
            }
        }
        else {
            if (res.to!string == s) {
                res.reverse;
            }
        }

        res.writeln;
    }
}
