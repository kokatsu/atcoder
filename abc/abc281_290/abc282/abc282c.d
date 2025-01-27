import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    bool isEnclosed;
    char[] res = S.dup;
    foreach (ref r; res) {
        if (r == '"') {
            isEnclosed = !isEnclosed;
        }
        else if (r == ',' && !isEnclosed) {
            r = '.';
        }
    }

    res.writeln;
}
