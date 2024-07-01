import std;

void main() {
    int N, M;
    string S;
    readf("%d %d\n%s\n", N, M, S);

    int num;
    auto res = new int[](N);
    foreach (i, s; S) {
        if (s == '+') res[i%N] += num + 1, num = 0;
        if (s == '0') ++res[i%N];
        if (s == '-') num += res[i%N] + 1, res[i%N] = 0;
    }

    writefln("%(%d\n%)", res);
}