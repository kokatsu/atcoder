import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    long res;
    foreach (a; "ABC") {
        res = max(res, S.countUntil(a) + 1);
    }

    res.writeln;
}
