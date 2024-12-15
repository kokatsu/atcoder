import std;

void main() {
    string X;
    readf("%s\n", X);

    int res = X.length.to!int, cnt;
    foreach (x; X) {
        if (x == 'S') {
            ++cnt;
        }
        else {
            if (cnt > 0) {
                --cnt;
                res -= 2;
            }
        }
    }

    res.writeln;
}
