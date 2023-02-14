import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int res, num;
    foreach (s; S) {
        num += (s == 'I' ? 1 : -1);
        res = max(res, num);
    }

    res.writeln;
}