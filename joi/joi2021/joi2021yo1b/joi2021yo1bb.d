import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    int cnt;
    foreach (s; S) {
        if ((cnt % 2 == 0 && s == 'I') || (cnt % 2 == 1 && s == 'O')) ++cnt;
    }

    string res = cnt >= 3 ? "Yes" : "No";
    res.writeln;
}