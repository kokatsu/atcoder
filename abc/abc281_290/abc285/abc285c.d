import std;

enum long L = 26;

void main() {
    string S;
    readf("%s\n", S);

    long res, cnt = 1;
    foreach_reverse (s; S) {
        res += cnt * (s - 'A' + 1);
        cnt *= L;
    }

    res.writeln;
}
