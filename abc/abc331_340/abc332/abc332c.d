import std;

void main() {
    int N, M;
    string S;
    readf("%d %d\n%s\n", N, M, S);

    int res, u = M, v;
    foreach (s; S) {
        if (s == '0') {
            u = M, v = res;
        }
        else if (s == '1' && u > 0) {
            --u;
        }
        else if (v > 0) {
            --v;
        }
        else {
            ++res;
        }
    }

    res.writeln;
}
