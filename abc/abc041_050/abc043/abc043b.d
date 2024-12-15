import std;

void main() {
    string s;
    readf("%s\n", s);

    string res;
    foreach (x; s) {
        if (x == 'B') {
            if (!res.empty) {
                res.popBack;
            }
        }
        else {
            res ~= x;
        }
    }

    res.writeln;
}
